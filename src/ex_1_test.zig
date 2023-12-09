const std = @import("std");
const ex_1 = @import("ex_1.zig");

test "expect output to be 'Hello, world!'" {
    var buffer: [100]u8 = undefined; // Buffer to capture output
    var stream = std.io.fixedBufferStream(&buffer); // Create a mutable stream with the buffer
    const writer = stream.writer(); // Get a writer from the stream

    try ex_1.printHelloWorld(writer); // Call your function with the writer
    try std.testing.expectEqualStrings("Hello, world!", stream.getWritten()); // Check the output
}
