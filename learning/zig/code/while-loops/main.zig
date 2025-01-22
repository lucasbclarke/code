const std = @import("std");
const print = @import("std").debug.print;
var i: u16 = undefined;

pub fn main() void {
    while (i<=1000) : (i+=1){
      print("i = {}\n", .{i});
    }
}
