const std = @import("std");

pub fn main() void{
    //const constant: i32 = 7; // signed 32-bit constant that is equal to 7
    //var variable: u32 = 7000; // unsigned 32-bit variable that is equal to 7000
    
    // @as performs an explicit type coercion
    const inferred_constant = @as(i32, 5);
    var inferred_variable = @as(u32, 5000);

    std.debug.print("{d}\n", .{inferred_constant});
    std.debug.print("{d}\n", .{inferred_variable});

    const a: i32 = undefined;
    var b: u32 = undefined;

    std.debug.print("{d}\n", .{a});
    std.debug.print("{d}\n", .{b});
}
