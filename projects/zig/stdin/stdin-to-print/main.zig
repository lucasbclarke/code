const std = @import("std");
const print = @import("std").debug.print;

pub fn main() !void {
    var arr: [10]u8 = undefined;
    const stdin = std.io.getStdIn().reader();
    _ = try stdin.readUntilDelimiter(&arr, '\n');
    print("user input is: {s}", .{arr});
}
