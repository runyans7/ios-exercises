//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    return [NSNumber numberWithDouble:[number doubleValue] * 2];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSMutableArray *numbersBetweenNumbers = [[NSMutableArray alloc] init];
    NSInteger lowNumber = (number < otherNumber) ? number : otherNumber;
    NSInteger highNumber = (number > otherNumber) ? number : otherNumber;
    
    for (NSInteger i = lowNumber; i <= highNumber; i++) {
        [numbersBetweenNumbers addObject:[NSNumber numberWithInt:i]];
    }
    return numbersBetweenNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSMutableArray *sortedNumberArray = [arrayOfNumbers mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [sortedNumberArray sortUsingDescriptors:@[sortDescriptor]];
    return [sortedNumberArray[0] longValue];
}

@end
