// EXERCISE 1

const std = @import("std");

pub fn printHelloWorld(writer: anytype) !void {
    try writer.print("Hello, world!", .{});
}
