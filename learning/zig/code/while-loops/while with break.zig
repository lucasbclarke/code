const std = @import("std");
const print = @import("std").debug.print;

pub fn main() void {
    var sum: u8 = 0;
    var i: u8 = 0;

    while (i <= 3) : (i += 1) {
        if (i == 2) break;
        sum += i;

        print("{d}\n", .{sum});
        print("{d}\n", .{i});
    }
}
