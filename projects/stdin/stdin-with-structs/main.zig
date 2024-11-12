const std = @import("std");
const print = @import("std").debug.print;
var name: [11]u8 = undefined;
var age: [4]u8 = undefined;

pub fn main() !void {
    print("Please enter your name\n", .{});
    const stdin = std.io.getStdIn().reader();
    _ = try stdin.readUntilDelimiter(&name, '\n');
    //print("{s}\n", .{name});

    print("Please enter your age\n", .{});
    _ = try stdin.readUntilDelimiter(&age, '\n');
    //print("{s}\n", .{age});

    const person = struct {
        name: []u8,
        age: []u8 
    };

    const lucas = person{
        .name = &name,
        .age = &age
    };
    
    if (std.mem.eql(u8, &name, "Lucas")) {
        if (std.mem.eql(u8, &age,"14")) {
            print("You are: \n", .{});
            print("{s}", .{lucas.name});
            print("{s}", .{lucas.age});
        }
    } else {
        print("Person not found\n", .{});
    }
}
