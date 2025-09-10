const std = @import("std");
const print = @import("std").debug.print;
const embedfile = @embedFile("s");

pub fn main() !void {
    var buffer: [1000]u8 = undefined;
    var fba = std.heap.FixedBufferAllocator.init(&buffer);
    const allocator = fba.allocator();

    const memory = try allocator.alloc(u8, 100);
    defer allocator.free(memory);
    
    var sequence = std.mem.splitSequence(u8, embedfile, " ");
    print("next = {any}\n", .{sequence.next()});
    print("index = {any}\n", .{sequence.index});
    print("buffer = {any}\n", .{sequence.buffer});
    print("peek = {any}\n", .{sequence.peek()});
    print("first = {any}\n", .{sequence.first()});
    print("delimiter = {any}\n", .{sequence.delimiter});
    print("rest = {any}\n", .{sequence.rest()});
    print("reset = {any}\n", .{sequence.reset()});
}
