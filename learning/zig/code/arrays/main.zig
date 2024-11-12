const std = @import("std");

pub fn main() void {
    const a = [5]u8{ 'h', 'e', 'l', 'l', 'o' };
    const b = [_]u8{ 'w', 'o', 'r', 'l', 'd' };

    //const aLength = a.len;
    //const bLength = b.len;

    std.debug.print("{s}\n", .{a});
    std.debug.print("{s}\n", .{b});

    //std.debug.print("{d}\n", .{aLength});
    //std.debug.print("{d}\n", .{bLength});

    std.debug.print("{d}\n", .{a.len});
    std.debug.print("{d}\n", .{b.len});


}
