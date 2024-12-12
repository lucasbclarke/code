const std = @import("std");
const stdout = std.io.getStdOut().writer();

pub fn printstr(comptime s: []const u8) !void {
    try stdout.write(s);
}

pub fn printnum(n: u8) !void {
    try stdout.write(n);
}
