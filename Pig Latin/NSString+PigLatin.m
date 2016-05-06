//
//  NSString+PigLatin.m
//  Pig Latin
//
//  Created by Taylor Benna on 2016-05-06.
//  Copyright © 2016 Taylor Benna. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization {
    NSArray *words = [self componentsSeparatedByString:@" "];
    
    NSString *newWord = [NSString new];
    NSMutableString *compiledString = [NSMutableString new];
    
    NSString *v = @"aeiouy";
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:v];
    
    
    //finds the first vowel
    for (NSString *word in words) {
        int loc = 0;
        NSString *piece = [NSString new];
        for(int i = 0; i < word.length; i++) {
            piece = [NSString stringWithFormat:@"%c", [word characterAtIndex:i]];
            if ([piece rangeOfCharacterFromSet:vowels].location != NSNotFound) {
                loc = i;
                break;
            }
        }
        //make pig latin
        newWord = [NSString stringWithFormat:@"%@%@ay", [word substringFromIndex:loc], [word substringToIndex:loc]] ;
        
        //add finished product
        [compiledString appendFormat:@"%@ ", newWord];
    }
    return [NSString stringWithString:compiledString];
}

@end
