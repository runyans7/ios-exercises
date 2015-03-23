//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSString *numberString = @"";
    NSInteger lowNumber = (number < otherNumber) ? number : otherNumber;
    NSInteger highNumber = (number > otherNumber) ? number : otherNumber;
    for (NSInteger i = lowNumber; i <= highNumber; i++) {
        numberString = [NSString stringWithFormat:@"%@%ld", numberString, i];
    }
    
    return numberString;
}

@end
