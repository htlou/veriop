#[path = "contract.rs"]
mod contract;

fn main() {
    assert_eq!(contract::zero_limit_witness(), (true, false));
    println!("zero-limit can_exec: old=true, new=false");
}
