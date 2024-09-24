#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if (numbersArray == nil || numbersArray.count == 0) {
        return @"";
    }

    NSMutableArray *ipNumbers = [NSMutableArray arrayWithCapacity:4];

    for (int index = 0; index <= 3; index++) {
        int number = (numbersArray.count > index) ? [numbersArray[index] intValue] : 0;

        if (number < 0) {
            return @"Negative numbers are not valid for input.";
        }
        if (number > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }

        [ipNumbers addObject:@(number).stringValue];
    }

    return [ipNumbers componentsJoinedByString:@"."];
}

@end
