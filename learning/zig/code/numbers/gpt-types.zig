const std = @import("std");

pub fn main() void {
    var x: u8 = 10;
    var y: i32 = @as(i32, x); // Casts u8 to i32
    std.debug.print("Value: {}\n", .{y});
}
