#![allow(dead_code)]
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum WhichCaptures { Implicit, None }
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum MatchKind { All }
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Config {
    pub match_kind: MatchKind,
    pub utf8_empty: bool,
    pub which_captures: WhichCaptures,
}
impl Config {
    fn match_kind(mut self, v: MatchKind) -> Self { self.match_kind = v; self }
    fn utf8_empty(mut self, v: bool) -> Self { self.utf8_empty = v; self }
    fn which_captures(mut self, v: WhichCaptures) -> Self { self.which_captures = v; self }
}
pub struct Builder { pub metac: Config }

pub fn old_string(self_: &Builder) -> Config {
        let metac = self_
            .metac
            .clone()
            .match_kind(MatchKind::All)
            .utf8_empty(true)
            .which_captures(WhichCaptures::Implicit);
    metac
}

pub fn old_bytes(self_: &Builder) -> Config {
        let metac = self_
            .metac
            .clone()
            .match_kind(MatchKind::All)
            .utf8_empty(false)
            .which_captures(WhichCaptures::Implicit);
    metac
}

pub fn new_string(self_: &Builder) -> Config {
        let metac = self_
            .metac
            .clone()
            .match_kind(MatchKind::All)
            .utf8_empty(true)
            .which_captures(WhichCaptures::None);
    metac
}

pub fn new_bytes(self_: &Builder) -> Config {
        let metac = self_
            .metac
            .clone()
            .match_kind(MatchKind::All)
            .utf8_empty(false)
            .which_captures(WhichCaptures::None);
    metac
}
