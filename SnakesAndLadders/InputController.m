//
//  InputController.m
//  SnakesAndLadders
//
//  Created by Tim Beals on 2016-11-06.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "InputController.h"
#import "Player.h"

@implementation InputController

- (NSString *)inputForPrompt:(NSString *)promptString
{
    NSLog(@"%@", promptString);
    NSLog(@"> ");
    char varWord[255];
    fgets(varWord, 255, stdin);
    NSString *userInput = [NSString stringWithCString:varWord encoding:NSUTF8StringEncoding];
    userInput = [userInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    userInput = [userInput lowercaseString];
    return userInput;
}



@end
