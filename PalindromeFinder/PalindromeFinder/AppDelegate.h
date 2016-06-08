//
//  AppDelegate.h
//  PalindromeFinder
//
//  Created by David Park on 6/7/16.
//  Copyright © 2016 David Park. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(NSMutableString *)reverseString:(NSString *)originalString;

-(BOOL)isPalindrome:(NSString *)inputString;


@end

