const std = @import("std");

pub fn main() void{
    const one = "1";
    std.debug.print("{s}\n", .{one});

    const two = "2";
    std.debug.print("{s}\n", .{two});
}
