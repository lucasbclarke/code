const std = @import("std");
const print = @import("std").debug.print;
const embedfile = @embedFile("s");

pub fn main() !void {
    var buffer: [1000]u8 = undefined;
    var fba = std.heap.FixedBufferAllocator.init(&buffer);
    const allocator = fba.allocator();

    var map = std.StringHashMap([]const u8).init(allocator);
    defer map.deinit();
    
    const keys = [_][]const u8 {
        "0",
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "",
        "\n",
    };
    const values = [_][]const u8 {
        "zero",
        "one",
        "two",
        "three",
        "four",
        "five",
        "six",
        "seven",
        "eight",
        "nine",
        "space",
        "newline",
    };

    for (keys, values) |key, value| {
        try map.put(key, value);
        print("key:value {s}:{s}\n", .{key, value});
        //ask mr pike about why there newline is not working!
    }

    var sequence = std.mem.splitAny(u8, embedfile, " \n");
    while (sequence.next()) |seq1| {
        if (map.get(seq1)) |word| {
            print("{s}\n", .{word});
        }
    }

}
