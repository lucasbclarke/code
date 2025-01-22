const std = @import("std");
const print = @import("std").debug.print;
var name: [6]u8 = undefined;
var age: [3]u8 = undefined;

const expexted_name: []const u8 = &[_]u8{ 'L', 'u', 'c', 'a', 's'};
const expexted_age: []const u8 = &[_]u8{ '1', '4'};

pub fn main() !void {
    print("Please enter your name\n", .{});
    const stdin = std.io.getStdIn().reader();
    _ = try stdin.readUntilDelimiter(&name, '\n');

    print("Please enter your age\n", .{});
    _ = try stdin.readUntilDelimiter(&age, '\n');

    const person = struct {
        name: []u8,
        age: []u8 
    };

    const lucas = person{
        .name = &name,
        .age = &age
    };
    
    if (std.mem.eql(u8, &name, expexted_name)) {
        if (std.mem.eql(u8, &age, expexted_age)) {
            print("You are: \n", .{});
            print("{s}", .{lucas.name});
            print("{s}", .{lucas.age});
        }
    } else {
        print("Person not found\n", .{});
        print("{c}", .{lucas.name});
        print("{c}", .{lucas.age});

        print("expec name = {c}\n", .{expexted_name});
        print("expec age = {c}\n", .{expexted_age});
    }
}
