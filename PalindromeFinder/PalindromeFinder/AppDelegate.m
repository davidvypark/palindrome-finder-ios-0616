//
//  AppDelegate.m
//  PalindromeFinder
//
//  Created by David Park on 6/7/16.
//  Copyright © 2016 David Park. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [self isPalindrome:@"Race car"];        //YES
    [self isPalindrome:@"Wazzap"];          //NO
    [self isPalindrome:@"asdsa"];           //YES
    [self isPalindrome:@"asd.sa"];          //YES
    
    
    
    return YES;
}


-(NSMutableString *)reverseString:(NSString *)originalString {
    
    NSMutableString *flippedString = [NSMutableString stringWithString:@""];
    
    for(NSInteger i = originalString.length - 1; i >= 0; i = i -1) {
        
        NSString *letter = [originalString substringWithRange:NSMakeRange(i,1)];
        
        [flippedString appendString:letter];
    }
    NSLog(@"FLIPPED STRING = %@", flippedString);
    return flippedString;
}



-(BOOL)isPalindrome:(NSString *)inputString {
    
    NSLog(@"INPUT STRING = %@", inputString);
    NSMutableString *mutString = [inputString mutableCopy];
                                                   
    NSMutableString *noSymbolNoSpacesLowerCase = [[[[mutString lowercaseString] componentsSeparatedByCharactersInSet:[[NSCharacterSet letterCharacterSet] invertedSet]] componentsJoinedByString:@""] mutableCopy];
    
    NSLog(@"CLEAN = %@", noSymbolNoSpacesLowerCase);
    
    if([noSymbolNoSpacesLowerCase isEqualToString:[self reverseString:noSymbolNoSpacesLowerCase]]) {
        
        NSLog(@"YES");
        return YES;
    }
    
    NSLog(@"NO");
    return NO;
}



@end
