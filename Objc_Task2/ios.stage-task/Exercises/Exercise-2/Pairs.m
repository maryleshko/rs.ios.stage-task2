#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int numberOfValues = 0;
    NSCountedSet *checkedValues = [NSCountedSet new];

    for (NSNumber *value in array) {
        if (number.intValue == 0) {
            numberOfValues += [checkedValues countForObject:value];
        } else {
            int positiveDiff = value.intValue + number.intValue;
            int negativeDiff = value.intValue - number.intValue;

            numberOfValues += [checkedValues countForObject:@(positiveDiff)];
            numberOfValues += [checkedValues countForObject:@(negativeDiff)];
        }

        [checkedValues addObject:value];
    }

    return numberOfValues;
}

@end

//@[@2, @2, @2, @1, @1, @1, @2, @2, @2]

//- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
//    int numberOfValues = 0;
//    NSCountedSet *checkedValues = [NSCountedSet new];
//
//    for (NSNumber *value in array) {
////        int pDiff = (value == 0 ? value.intValue : abs(value.intValue)) - (number == 0 ? number.intValue : abs(number.intValue));
////        int nDiff = (value == 0 ? value.intValue : abs(value.intValue)) + (number == 0 ? number.intValue : abs(number.intValue));
//        int pDiff = value.intValue - number.intValue;
//        int nDiff = value.intValue - number.intValue;
////        int absDiff = diff == 0 ? diff : abs(diff);
//        if (pDiff == nDiff) {
//            numberOfValues += [checkedValues countForObject:@(pDiff)];
//        } else {
//            if ([checkedValues containsObject:@(pDiff)]) {
//                numberOfValues += [checkedValues countForObject:@(pDiff)];
//            }
//            if ([checkedValues containsObject:@(nDiff)]) {
//                numberOfValues += [checkedValues countForObject:@(nDiff)];
//            }
//        }
//        [checkedValues addObject:value];
////        if ([checkedValues containsObject:@(value.intValue + number.intValue)] || [checkedValues containsObject:@(value.intValue - number.intValue)]) {
////            numberOfValues += [checkedValues countForObject:@(value.intValue + number.intValue)] || [checkedValues containsObject:@(value.intValue - number.intValue)];
////        }
////        [checkedValues addObject:value];
//    }
//
//    return numberOfValues;
//}
