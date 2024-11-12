const std = @import("std");
const print = @import("std").debug.print;

pub fn main() !void {
    var input: [4]u8 = undefined;
    print("Enter your age\n", .{});
    const stdin = std.io.getStdIn().reader();
    _ = try stdin.readUntilDelimiter(&input, '\n');
    print("You age is: {s}\n", .{input});
}
