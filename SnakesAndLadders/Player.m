//
//  Player.m
//  SnakesAndLadders
//
//  Created by Tim Beals on 2016-11-06.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        _gameLogic = @{@4: @14, @9: @31, @17: @7, @20: @38, @28: @84, @40: @59, @51: @67, @63: @81, @64: @60, @89: @26, @95: @75, @99: @78};
        _isGameOver = NO;
    }
    return self;
}

- (void)rollDice {
    NSLog(@"Your starting position is: %ld", self.currentSquare);
    NSInteger roll = 1 + arc4random_uniform(6);
    NSLog(@"You rolled a: %ld", roll);
    NSNumber *temp = @(self.currentSquare + roll);
    
    if([self.gameLogic objectForKey:temp])
    {
        self.currentSquare = [[self.gameLogic objectForKey:temp] integerValue];
        if(temp.integerValue < self.currentSquare)
        {
            NSLog(@"Mind your step! You're moving on up the ladder from %@ to %ld", temp, self.currentSquare);
        }
        else
        {
            NSLog(@"Snake bite! You are sliding from %@ all the way down to %ld", temp, self.currentSquare);
        }
    }
    else
    {
        self.currentSquare = temp.integerValue;
        NSLog(@"You have moved to %ld", self.currentSquare);
    }
    if(self.currentSquare >= 100) {
        NSLog(@"YOU WIN!");
        self.isGameOver = YES;
    }
}

@end
