const std = @import("std");
const print = @import("std").debug.print;
const embedfile = @embedFile("s");

pub fn main() !void {
    var buffer: [1000]u8 = undefined;
    var fba = std.heap.FixedBufferAllocator.init(&buffer);
    const allocator = fba.allocator();

    const memory = try allocator.alloc(u8, 100);
    defer allocator.free(memory);
    
    var sequence1 = std.mem.splitSequence(u8, embedfile, " ");
    while (sequence1.next()) |seq1| {
        print("seq1 = {s}\n", .{seq1});

        var sequence2 = std.mem.splitSequence(u8, embedfile, "\n");
        while (sequence2.next()) |seq2| {
            print("seq2 = {s}\n", .{seq2});
        }
    }

}
