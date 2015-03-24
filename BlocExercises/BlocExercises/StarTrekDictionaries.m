//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSString *favoriteDrink = [characterDictionary valueForKey:@"favorite drink"];
    
    return favoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSMutableArray *favoriteDrinks = [[NSMutableArray alloc] init];
    
    for (NSDictionary *characters in charactersArray) {
        NSString *favoriteDrink = [characters valueForKey:@"favorite drink"];
        [favoriteDrinks addObject:favoriteDrink];
    }
    
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *characterWithQuote = [characterDictionary mutableCopy];
    
    [characterWithQuote setObject:@"Two infinity and...wait wrong movie." forKey:@"quote"];
    return characterWithQuote;
}

@end
