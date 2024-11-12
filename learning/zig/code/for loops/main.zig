const std = @import("std");
const print = @import("std").debug.print;

pub fn main() void {
    const array = [5]u8{ '1', '2', '3', '4', '5' };
    print("{s}\n", .{array});

    var i: usize = 1;

    for (array) |element| {
        print("{}: {c}\n", .{ i, element });
        i += 1;
    }
}
