const std = @import("std");
const print = @import("std").debug.print;

var running_total: u32 = 0;
var report: u32 = 0;
var safe_report: bool = true;
var number_index: u32 = 0;
var prev_number: u32 = undefined;
var new_line_started: bool = true;
var direction: i8 =  0;
var line_direction: i8 =  0;

pub fn main() !void {
    const allocator = std.heap.page_allocator;
    var arr_list: std.ArrayList(u32) = .empty;
    var safe_reports: std.ArrayList(u32) = .empty;
    defer arr_list.deinit(allocator);

    var file_buffer: [150]u8 = undefined; //change to 15,000 on final run
    const file_reader = try std.fs.File.read(try std.fs.cwd().openFile("s", .{}), &file_buffer);
    _ = file_reader;
    for (file_buffer) |char| {
        print("char = {c}\n", .{char});
        if (char == ' ') {
            if (running_total > 0) {
                try arr_list.append(allocator, running_total);
                //print("arry_list = {any}\n", .{arr_list.items});
            }
            running_total = 0;
        } else if (char == '\n') {
            if (running_total > 0) {
                try arr_list.append(allocator, running_total);
                //print("arry_list = {any}\n", .{arr_list.items});
            }
            running_total = 0;
            report += 1;
            print("report = {}\n", .{report});
            
            if (safe_report) {
                try safe_reports.append(allocator, report);
            }
            safe_report = true;
            new_line_started = true;
            print("new_line_started\n", .{});
        } else if (char >= '0' and char <= '9') {
            running_total *= 10;
            running_total += char - 48;
            
            if (!new_line_started) { 
                if (number_index > 0) {
                    prev_number = arr_list.items[number_index - 1];

                    if (prev_number != running_total) {
                        print("prev number = {}\n", .{prev_number});
                        print("running_total = {}\n", .{running_total});

                        if (prev_number > running_total) {
                            if (prev_number - running_total == 1 or
                                prev_number - running_total == 2 or
                                prev_number - running_total == 3) {
                                print("subtraction between 1 and 3\n", .{});
                                direction = -1;
                                if (line_direction == 0 or line_direction == direction) {
                                    safe_report &= true;
                                    line_direction = direction;
                                }
                            } else {
                                print("subtraction not between 1 and 3\n", .{});
                                safe_report &= false;
                            }
                        } else if (prev_number < running_total) {
                            if (running_total - prev_number == 1 or
                                running_total - prev_number == 2 or
                                running_total - prev_number == 3) {
                                print("addition between 1 and 3 \n", .{});
                                safe_report &= true;
                                direction = 1;
                                if (line_direction == 0 or line_direction == direction) {
                                    safe_report &= true;
                                    line_direction = direction;
                                }
                            } else {
                                print("addition not between 1 and 3\n", .{});
                                safe_report &= false;
                            }
                        } 
                    } else {
                        safe_report &= false;
                    }
                } else {
                    print("previous number = running_total\n", .{});
                    safe_report &= false;
                }
            } 

            number_index += 1;
            print("report safe = {}\n", .{safe_report});
            //print("number index = {}\n", .{number_index});
            new_line_started = false;
        }
    }

    print("safe reports = {any}\n", .{safe_reports.items});
    
    running_total = 0;
}
