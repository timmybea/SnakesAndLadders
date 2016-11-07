//
//  Player.m
//  SnakesAndLadders
//
//  Created by Tim Beals on 2016-11-06.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if(self)
    {
        _gameLogic = @{@4: @14, @9: @31, @17: @7, @20: @38, @28: @84, @40: @59, @51: @67, @63: @81, @64: @60, @89: @26, @95: @75, @99: @78};
        _isGameOver = NO;
        _name = name;
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
            NSLog(@"Nice one %@! You are moving on up the ladder from %@ to %ld", self.name, temp, self.currentSquare);
            NSLog(@"\n");
        }
        else
        {
            NSLog(@"Snake bite! You are sliding from %@ all the way down to %ld. Bummer %@!", temp, self.currentSquare, self.name);
            NSLog(@"\n");
        }
    }
    else
    {
        self.currentSquare = temp.integerValue;
        if(self.currentSquare <= 100)
        {
            NSLog(@"You have moved to %ld", self.currentSquare);
            NSLog(@"\n");
        }
    }
    if(self.currentSquare >= 100)
    {
        NSLog(@"YOU WIN!");
        NSLog(@"\n");
        self.isGameOver = YES;
    }
}

@end
