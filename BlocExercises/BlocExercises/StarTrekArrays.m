//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    return [characterArray sortedArrayUsingDescriptors:@[sortDescriptor]];
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    
    NSArray *filteredArray = [characterArray filteredArrayUsingPredicate:containsWorf];
    if (filteredArray.count == 0) {
        NSLog(@"Array count: %ld", filteredArray.count);
        return NO;
    } else {
        NSLog(@"Array count: %ld", filteredArray.count);
        return  YES;
    }
}
@end
