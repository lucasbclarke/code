const std = @import("std");
const print = @import("std").debug.print;

pub fn main() void {
    const array1 = [10]u8{'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j' };
    const array2 = [_]u8{'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't' };
    
    print("{s}\n", .{array1});
    print("{s}\n", .{array2});

    print("{d}\n", .{array1.len});
    print("{d}\n", .{array2.len});
}
