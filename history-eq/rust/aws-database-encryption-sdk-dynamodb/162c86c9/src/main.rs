mod new_helper;

use std::future::Future;
use tokio::runtime::{Builder, Handle};

// Copied from the old intercept.rs modify_request/modify_response blocking expression.
fn prior<F: Future<Output = O>, O>(fut: F) -> O {
    tokio::task::block_in_place(|| Handle::current().block_on(async { fut.await }))
}

fn main() {
    let use_new = std::env::args().nth(1).as_deref() == Some("new");
    let runtime = Builder::new_current_thread().enable_all().build().unwrap();
    let result = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
        runtime.block_on(async {
            if use_new {
                new_helper::escape_to_async(async { 7 })
            } else {
                prior(async { 7 })
            }
        })
    }));
    match result {
        Ok(value) => println!("VALUE {value}"),
        Err(_) => println!("PANIC"),
    }
}
