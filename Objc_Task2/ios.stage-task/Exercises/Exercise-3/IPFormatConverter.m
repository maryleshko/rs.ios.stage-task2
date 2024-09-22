#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if (numbersArray == nil || numbersArray.count == 0) {
        return @"";
    }

    NSMutableArray *ipNumbers = [NSMutableArray arrayWithCapacity:4];

    for (int i = 0; i <= 3; i++) {
        if (numbersArray.count > i) {
            int number = [numbersArray[i] intValue];

            if (number < 0) {
                return @"Negative numbers are not valid for input.";
            }
            if (number > 255) {
                return @"The numbers in the input array can be in the range from 0 to 255.";
            }

            [ipNumbers addObject:@(number).stringValue];
        } else {
            [ipNumbers addObject:@"0"];
        }
    }

    return [ipNumbers componentsJoinedByString:@"."];
}

@end
