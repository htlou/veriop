// fndiff FILE.rs -> JSON list of items {key, kind, sig, body, full, cfg, inline}
use quote::ToTokens;
use std::collections::HashMap;
use std::hash::{Hash, Hasher};
use std::collections::hash_map::DefaultHasher;
use serde_json::json;
use syn::{Item, ImplItem, TraitItem, Attribute};
use syn::spanned::Spanned;

fn h(s: &str) -> String { let mut x = DefaultHasher::new(); s.hash(&mut x); format!("{:016x}", x.finish()) }
fn ts<T: ToTokens>(t: &T) -> String { t.to_token_stream().to_string() }
fn attrs_str(a: &[Attribute]) -> (String, String) {
    let mut cfg = String::new(); let mut other = String::new();
    for x in a {
        if x.path().is_ident("doc") { continue; }
        let s = ts(x);
        if x.path().is_ident("cfg") || x.path().is_ident("cfg_attr") { cfg.push_str(&s); } else { other.push_str(&s); }
    }
    (cfg, other)
}
struct Cx { out: Vec<serde_json::Value>, seen: HashMap<String, usize>, extra: serde_json::Value }
impl Cx {
    fn push(&mut self, key: String, kind: &str, sig: String, body: String, full: String, cfg: String, other: String) {
        let n = self.seen.entry(format!("{key}{cfg}")).or_insert(0); *n += 1;
        let key = if *n > 1 { format!("{key}#{n}") } else { key };
        let ex = std::mem::replace(&mut self.extra, json!({}));
        self.out.push(json!({"key": key, "kind": kind, "sig": sig, "body": h(&body), "full": h(&full), "cfg": cfg, "attrs": other, "span": ex}));
    }
    fn items(&mut self, pre: &str, items: &[Item]) {
        for it in items {
            match it {
                Item::Fn(f) => {
                    let (cfg, other) = attrs_str(&f.attrs);
                    let sig = ts(&f.sig); let vis = ts(&f.vis);
                    let body = ts(&f.block);
                    let nf = format!("{vis} {sig} {body}");
                    self.extra = json!({"start": f.span().start().line, "end": f.span().end().line, "name": f.sig.ident.to_string(), "has_self": f.sig.receiver().is_some()});
                    self.push(format!("{pre}::{}", f.sig.ident), "fn", format!("{vis} {sig}"), body, nf, cfg, other);
                }
                Item::Mod(m) => {
                    let (cfg, other) = attrs_str(&m.attrs);
                    let p = format!("{pre}::{}", m.ident);
                    if let Some((_, c)) = &m.content { 
                        self.push(p.clone(), "mod", String::new(), String::new(), format!("{cfg}"), cfg, other);
                        self.items(&p, c); }
                }
                Item::Impl(i) => {
                    let (cfg, other) = attrs_str(&i.attrs);
                    let ty = ts(&i.self_ty);
                    let tr = i.trait_.as_ref().map(|(b, p, _)| format!("{}{} for ", if b.is_some() {"!"} else {""}, ts(p))).unwrap_or_default();
                    let gens = ts(&i.generics);
                    let hdr = format!("{pre}::<{tr}{ty}>");
                    self.push(hdr.clone(), "impl", format!("{gens} {tr}{ty} {}", ts(&i.generics.where_clause)), String::new(), format!("{gens}{tr}{ty}"), cfg.clone(), other);
                    for ii in &i.items {
                        match ii {
                            ImplItem::Fn(f) => {
                                let (c2, o2) = attrs_str(&f.attrs);
                                let sig = ts(&f.sig); let vis = ts(&f.vis);
                                let body = ts(&f.block);
                                let nf = format!("{vis} {sig} {body}");
                                self.extra = json!({"start": f.span().start().line, "end": f.span().end().line, "name": f.sig.ident.to_string(), "impl_end": i.span().end().line, "impl_hdr": format!("impl {} {} {}", ts(&i.generics), ts(&i.self_ty), ts(&i.generics.where_clause)), "is_trait_impl": i.trait_.is_some(), "has_self": f.sig.receiver().is_some()});
                                self.push(format!("{hdr}::{}", f.sig.ident), "fn", format!("{vis} {sig}"), body, nf, format!("{cfg}{c2}"), o2);
                            }
                            ImplItem::Const(c) => { let (c2,o2)=attrs_str(&c.attrs); self.push(format!("{hdr}::{}", c.ident), "const", ts(&c.ty), ts(&c.expr), ts(c), c2, o2); }
                            ImplItem::Type(t) => { let (c2,o2)=attrs_str(&t.attrs); self.push(format!("{hdr}::{}", t.ident), "type", String::new(), ts(&t.ty), ts(t), c2, o2); }
                            other => { self.push(format!("{hdr}::?macro"), "other", String::new(), ts(other), ts(other), String::new(), String::new()); }
                        }
                    }
                }
                Item::Trait(t) => {
                    let (cfg, other) = attrs_str(&t.attrs);
                    let hdr = format!("{pre}::trait {}", t.ident);
                    self.push(hdr.clone(), "trait", format!("{}{}", ts(&t.generics), ts(&t.supertraits)), String::new(), format!("{}", ts(&t.generics)), cfg, other);
                    for ti in &t.items {
                        match ti {
                            TraitItem::Fn(f) => {
                                let (c2, o2) = attrs_str(&f.attrs);
                                let sig = ts(&f.sig);
                                let body = f.default.as_ref().map(|b| ts(b)).unwrap_or_default();
                                self.push(format!("{hdr}::{}", f.sig.ident), "fn", sig.clone(), body.clone(), format!("{sig}{body}"), c2, o2);
                            }
                            other => { self.push(format!("{hdr}::?"), "other", String::new(), ts(other), ts(other), String::new(), String::new()); }
                        }
                    }
                }
                Item::Struct(s) => { let (c,o)=attrs_str(&s.attrs); self.push(format!("{pre}::struct {}", s.ident), "struct", ts(&s.fields), String::new(), format!("{}{}{}", ts(&s.generics), ts(&s.fields), o), c, o) }
                Item::Enum(s) => { let (c,o)=attrs_str(&s.attrs); self.push(format!("{pre}::enum {}", s.ident), "enum", ts(&s.variants), String::new(), format!("{}{}{}", ts(&s.generics), ts(&s.variants), o), c, o) }
                Item::Union(s) => { let (c,o)=attrs_str(&s.attrs); self.push(format!("{pre}::union {}", s.ident), "union", ts(&s.fields), String::new(), ts(&s.fields), c, o) }
                Item::Type(s) => { let (c,o)=attrs_str(&s.attrs); self.push(format!("{pre}::type {}", s.ident), "type", ts(&s.ty), String::new(), ts(s), c, o) }
                Item::Const(s) => { let (c,o)=attrs_str(&s.attrs); self.push(format!("{pre}::const {}", s.ident), "const", ts(&s.ty), ts(&s.expr), ts(s), c, o) }
                Item::Static(s) => { let (c,o)=attrs_str(&s.attrs); self.push(format!("{pre}::static {}", s.ident), "static", ts(&s.ty), ts(&s.expr), ts(s), c, o) }
                Item::Macro(m) => { let (c,o)=attrs_str(&m.attrs); let name = m.mac.path.segments.last().map(|x| x.ident.to_string()).unwrap_or_default(); let id = m.ident.as_ref().map(|i| i.to_string()).unwrap_or_default(); self.push(format!("{pre}::macro {name} {id}"), "macro", String::new(), ts(&m.mac.tokens), ts(&m.mac.tokens), c, o) }
                Item::Use(u) => { let (c,_)=attrs_str(&u.attrs); self.push(format!("{pre}::use"), "use", ts(&u.tree), String::new(), ts(u), c, String::new()) }
                Item::ExternCrate(u) => { self.push(format!("{pre}::extern {}", u.ident), "use", String::new(), String::new(), ts(u), String::new(), String::new()) }
                other => { self.push(format!("{pre}::?other"), "other", String::new(), ts(other), ts(other), String::new(), String::new()); }
            }
        }
    }
}
fn main() {
    let p = std::env::args().nth(1).unwrap();
    let src = match std::fs::read_to_string(&p) { Ok(s) => s, Err(e) => { println!("{}", json!({"error": format!("read: {e}")})); return; } };
    match syn::parse_file(&src) {
        Ok(f) => {
            let mut cx = Cx { out: vec![], seen: HashMap::new(), extra: json!({}) };
            cx.items("", &f.items);
            println!("{}", json!({"items": cx.out}));
        }
        Err(e) => println!("{}", json!({"error": format!("parse: {e}")})),
    }
}
