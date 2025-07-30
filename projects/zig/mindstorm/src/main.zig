const std = @import("std");
const print = @import("std").debug.print;
const ev3dev = @cImport({
    @cInclude("ev3dev-c/source/ev3/");
});

pub fn main() !void {
    print("Hello, World!", .{});
    ev3dev.
}
