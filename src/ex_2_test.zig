const std = @import("std");
const ex_1 = @import("ex_2.zig");

test "expect addOne adds one to 41" {
    try std.testing.expect(ex_1.addOne(41) == 42);
}

test "expect addOne returns i32" {
    try std.testing.expect(@TypeOf(ex_1.addOne(0)) == i32);
}
