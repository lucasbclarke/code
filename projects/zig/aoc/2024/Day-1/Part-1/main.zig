const std = @import("std");
const print = @import("std").debug.print;
const embedfile = @embedFile("s");

pub fn main() !void {
    var buffer: [1000]u8 = undefined;
    var fba = std.heap.FixedBufferAllocator.init(&buffer);
    const allocator = fba.allocator();

    var map = std.StringHashMap([]const u8).init(allocator);
    defer map.deinit();

    try map.put("1", "one");
    try map.put("2", "two");
    try map.put("3", "three");

    var sequence = std.mem.splitAny(u8, embedfile, " \n");
    while (sequence.next()) |seq1| {
        if (map.get(seq1)) |word| {
            print("{s}\n", .{word});
        } 
    }

}
