fn main() {
    let cases: Vec<Vec<u8>> = vec![
        vec![], vec![1, 2], vec![1, 2, 3, 4], vec![1, 2, 3, 4, 5, 6], vec![1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
        vec![0, 2, 3, 4], vec![1, 2, 3, 0, 5, 6], vec![1, 2, 3, 4, 0, 6], vec![1, 2, 3, 4, 5, 0],
        vec![1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 11],
    ];
    for c in &cases {
        let mut out = vec![0xAAu8; 8];
        let r = nested_exit::two_chunk_loops(c, &mut out);
        let r = match r { Ok(n) => format!("ok {}", n), Err(e) => format!("err {}", e) };
        println!("{:?} -> {} {:?}", c, r, out);
    }
}
