//
//  main.m
//  Pig Latin
//
//  Created by Taylor Benna on 2016-05-06.
//  Copyright © 2016 Taylor Benna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char input[255];
        NSLog(@"Enter a sentence you would like translated to Pig Latin:");
        fgets(input, 255, stdin);
        NSString *inputString = [[NSString alloc] initWithUTF8String:input];
        inputString = [[inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] lowercaseString];
        
        NSString *pig = [inputString stringByPigLatinization];
        NSLog(@"-- %@--", pig);
    }
    return 0;
}
