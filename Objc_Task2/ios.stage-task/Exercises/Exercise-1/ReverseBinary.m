#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    NSMutableString *binaryRepresentation = [[NSMutableString alloc] initWithCapacity:8];

    for (int i = 7; i >= 0; i--) {
        UInt8 bit = (n >> i) & 1;
        [binaryRepresentation insertString:[NSString stringWithFormat:@"%u", bit] atIndex:0];
        // Decided to do this way, because we still would need to reverse the string from the normal order, but I'm not sure about the performance itself
    }

    return (UInt8)strtoul([binaryRepresentation UTF8String], NULL, 2);
}
