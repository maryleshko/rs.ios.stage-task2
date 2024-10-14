#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if (!numbersArray.count) {
        return @"";
    }

    NSMutableArray *resultArray = [[NSMutableArray alloc] initWithObjects:@"0", @"0", @"0", @"0", nil];

    for (int index = 0; index < MIN(numbersArray.count, resultArray.count); index++) {
        if ([numbersArray[index] intValue] < 0) {
            return @"Negative numbers are not valid for input.";
        }
        if ([numbersArray[index] intValue] > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }

        resultArray[index] = [numbersArray[index] stringValue];
    }

    return [resultArray componentsJoinedByString:@"."];
}

@end
