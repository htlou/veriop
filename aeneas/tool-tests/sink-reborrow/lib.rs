pub struct SliceSink<'a> {
    output: &'a mut [u8],
    pos: usize,
}

pub trait Sink {
    fn byte_at(&mut self, index: usize) -> u8;
    fn push(&mut self, byte: u8);
}

impl Sink for SliceSink<'_> {
    fn byte_at(&mut self, index: usize) -> u8 {
        self.output[index]
    }

    fn push(&mut self, byte: u8) {
        self.output[self.pos] = byte;
        self.pos += 1;
    }
}

pub fn through_trait(sink: &mut SliceSink<'_>, index: usize) {
    let byte = sink.byte_at(index);
    sink.push(byte);
}

pub fn directly(sink: &mut SliceSink<'_>, index: usize) {
    let byte = sink.output[index];
    sink.output[sink.pos] = byte;
    sink.pos += 1;
}

pub fn generic<S: Sink>(sink: &mut S, index: usize) {
    let byte = sink.byte_at(index);
    sink.push(byte);
}

pub fn through_generic(sink: &mut SliceSink<'_>, index: usize) {
    generic(sink, index);
}
