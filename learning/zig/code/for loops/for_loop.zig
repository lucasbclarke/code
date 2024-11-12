const std = @import("std");
const print = @import("std").debug.print;

pub fn main() void{
    const array = [_]u8{ '1', '2', '3' };

    var i: usize = 1;
    for (array) |character| {
        print("Index {} Character {c}\n", .{i, character});
        i += 1;
    }
}
