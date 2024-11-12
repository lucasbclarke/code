const std = @import("std");
const print = @import("std").debug.print;
const printstr = @import("test.zig").printstr;
const printnum = @import("test.zig").printnum;

pub fn main() !void {
    try printstr("Hello World");
    try printnum(7);
}
