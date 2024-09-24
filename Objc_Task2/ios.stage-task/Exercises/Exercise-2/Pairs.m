#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int numberOfValues = 0;
    NSMutableSet *checkedValues = [NSMutableSet new];

    for (NSNumber *value in array) {
        if ([checkedValues containsObject:@(value.intValue - number.intValue)]) {
            numberOfValues++;
        }
        [checkedValues addObject:value];
    }

    return numberOfValues;
}

@end
