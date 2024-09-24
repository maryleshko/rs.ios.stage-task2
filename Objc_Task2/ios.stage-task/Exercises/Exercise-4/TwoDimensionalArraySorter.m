#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if (!array) {
        return @[];
    }

    NSMutableArray *flattenedArray = [NSMutableArray array];

    for (id element in array) {
        if ([element isKindOfClass:[NSArray class]]) {
            [flattenedArray addObjectsFromArray:element];
        } else {
            return @[];
        }
    }

    NSMutableArray<NSString *> *strings = [NSMutableArray new];
    NSMutableArray<NSNumber *> *numbers = [NSMutableArray new];

    for (id object in flattenedArray) {
        if ([object isKindOfClass:[NSString class]]) {
            [strings addObject:object];
        } else if ([object isKindOfClass:[NSNumber class]]) {
            [numbers addObject:object];
        }
    }

    NSArray *sortedStrings = [strings sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2) {
        return [obj1 compare:obj2];
    }];
    NSArray *sortedNumbers = [numbers sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        return [obj1 compare:obj2];
    }];

    NSMutableArray *finalArray = [NSMutableArray array];

    if ((numbers.count == 0) && (strings.count != 0)) {
        [finalArray addObjectsFromArray:sortedStrings];
    } else if ((numbers.count != 0) && (strings.count == 0)) {
        [finalArray addObjectsFromArray:sortedNumbers];
    } else {
        [finalArray addObject:numbers];
        [finalArray addObject:strings];
    }

    return [finalArray copy];
}

@end
