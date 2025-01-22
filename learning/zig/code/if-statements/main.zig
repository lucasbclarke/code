const std = @import("std");

pub fn main() void {

    const a = true;

    if (a) {
            std.debug.print("hello Ed\n", .{});
        } else {
            std.debug.print("hello world\n", .{});
    }

}

