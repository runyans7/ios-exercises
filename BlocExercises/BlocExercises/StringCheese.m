//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    
    if (cheeseRange.location != NSNotFound) {
        return [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    } else {
        return cheeseName;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        return  @"1 cheese";
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        return [NSString stringWithFormat:@"%lu cheeses", cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return nil;
}

@end
