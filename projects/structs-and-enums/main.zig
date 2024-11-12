const std = @import("std");
const print = @import("std").debug.print;

const subjects = enum {
    math,
    english,
    science,
    HSIE,
    PDHPE,
    comp_tech,
    comerce,
};

const genders = enum { male, female };

const student = struct {
    fav_subject: subjects,
    least_fav_subject: subjects,
    best_subject: subjects,
    worst_subject: subjects,
    gender: genders,
    stamina: u32,
};

pub fn main() !void {
    var studentA = student{
        .fav_subject = subjects.comp_tech,
        .least_fav_subject = subjects.english,
        .best_subject = subjects.math,
        .worst_subject = subjects.HSIE,
        .gender = genders.male,
        .stamina = 100,
    };

    while (studentA.stamina > 0) {
        print("StudentA Stamina = {}\n", .{studentA.stamina});
        print("StudentA Gender = {}\n", .{studentA.gender});
        print("StudentA Favourite Subject = {}\n", .{studentA.fav_subject});
        print("StudentA Least Favourite Subject = {}\n", .{studentA.least_fav_subject});
        print("StudentA Best Subject = {}\n", .{studentA.best_subject});
        print("StudentA Worst Subject = {}\n", .{studentA.worst_subject});
        if (studentA.stamina == 1) {
            break;
        } else {
            print("\n", .{});
        }
        print("\n", .{});
        studentA.stamina -= 1;
    } else if (studentA.stamina <= 0) {
        studentA.stamina = 0;
    }
}
