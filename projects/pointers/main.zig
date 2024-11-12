const std = @import("std");
const print = @import("std").debug.print;

pub fn main() !void {
    var foo: u8 = 5;
    var bar: u8 = 10;
    const foo_point: *const u8 = &foo;
    var bar_point: *u8 = &bar;
    print("Foo: {}, Bar: {}, Foo_point: {}, Bar_point: {}\n", .{ foo, bar, foo_point, bar_point });

    bar_point = &foo;
    print("Bar_point is now {}\n", .{bar_point});
}
