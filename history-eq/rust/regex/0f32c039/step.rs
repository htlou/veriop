// Source-audited abstraction of one epsilon-transition scheduling decision.
// Stop covers terminal/failed-look/visited; Follow covers Save/true-look.
pub enum Action {
    Stop,
    Follow(u32),
    Split(u32, u32),
}

pub fn old_schedule(mut rest: Vec<u32>, action: Action) -> Vec<u32> {
    match action {
        Action::Stop => {}
        Action::Follow(next) => rest.push(next),
        Action::Split(first, second) => {
            rest.push(second);
            rest.push(first);
        }
    }
    rest
}

pub fn new_schedule(mut rest: Vec<u32>, action: Action) -> (Vec<u32>, Option<u32>) {
    let current = match action {
        Action::Stop => None,
        Action::Follow(next) => Some(next),
        Action::Split(first, second) => {
            rest.push(second);
            Some(first)
        }
    };
    (rest, current)
}

pub fn materialize(mut rest: Vec<u32>, current: Option<u32>) -> Vec<u32> {
    if let Some(ip) = current {
        rest.push(ip);
    }
    rest
}
