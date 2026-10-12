#![allow(dead_code)]
mod prog {
    #[derive(Clone, Copy)]
    pub enum Inst {
        Char(u8), Ranges(u8), EmptyLook(u8), Match(u8),
        Save(u8), Split(u8), Bytes(u8),
    }
    pub struct Program { pub dfa_size_limit: usize, pub insts: Vec<Inst> }
    impl Program { pub fn len(&self) -> usize { self.insts.len() } }
    impl<'a> IntoIterator for &'a Program {
        type Item = &'a Inst;
        type IntoIter = std::slice::Iter<'a, Inst>;
        fn into_iter(self) -> Self::IntoIter { self.insts.iter() }
    }
}
use prog::Program;

pub fn can_exec_old(insts: &Program) -> bool {
    use prog::Inst::*;
    // If for some reason we manage to allocate a regex program with more
    // than i32::MAX instructions, then we can't execute the DFA because we
    // use 32 bit instruction pointer deltas for memory savings.
    // If i32::MAX is the largest positive delta,
    // then -i32::MAX == i32::MIN + 1 is the largest negative delta,
    // and we are OK to use 32 bits.
    if insts.len() > ::std::i32::MAX as usize {
        return false;
    }
    for inst in insts {
        match *inst {
            Char(_) | Ranges(_) => return false,
            EmptyLook(_) | Match(_) | Save(_) | Split(_) | Bytes(_) => {}
        }
    }
    true
}

pub fn can_exec_new(insts: &Program) -> bool {
    use prog::Inst::*;
    // If for some reason we manage to allocate a regex program with more
    // than i32::MAX instructions, then we can't execute the DFA because we
    // use 32 bit instruction pointer deltas for memory savings.
    // If i32::MAX is the largest positive delta,
    // then -i32::MAX == i32::MIN + 1 is the largest negative delta,
    // and we are OK to use 32 bits.
    if insts.dfa_size_limit == 0 || insts.len() > ::std::i32::MAX as usize {
        return false;
    }
    for inst in insts {
        match *inst {
            Char(_) | Ranges(_) => return false,
            EmptyLook(_) | Match(_) | Save(_) | Split(_) | Bytes(_) => {}
        }
    }
    true
}
pub fn zero_limit_witness() -> (bool, bool) {
    let program = Program { dfa_size_limit: 0, insts: Vec::new() };
    (can_exec_old(&program), can_exec_new(&program))
}
