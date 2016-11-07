//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by Tim Beals on 2016-11-07.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "PlayerManager.h"
#import "InputController.h"
#import "Player.h"

@implementation PlayerManager

- (instancetype)init {
    self = [super init];
    if(self)
    {
        _players = [[NSMutableArray alloc] init];
        _isPlayersComplete = NO;
        _currentIndex = 0;
        _isGameOver = NO;
    }
    return self;
}

-(void)createPlayers
{
    NSInteger playerNumber = 1;
    while(self.isPlayersComplete == NO) {
        InputController *inputController = [[InputController alloc] init];
        NSString *command = [inputController inputForPrompt:[NSString stringWithFormat:@"Enter player %ld's name or 'submit'", playerNumber]];
        if([command isEqualToString:@"SUBMIT"])
        {
            self.isPlayersComplete = YES;
        }
        else
        {
            Player *player = [[Player alloc] initWithName:command];
            [self.players addObject:player];
            NSLog(@"Player %ld: %@", playerNumber, command);
            playerNumber += 1;
        }
    }
}

- (void)play {

    self.currentIndex = self.currentIndex % ([self.players count]);
    Player *currentPlayer = [self.players objectAtIndex:self.currentIndex];
    
    InputController *inputController = [[InputController alloc] init];
    
    NSLog(@"It is %@'s turn", currentPlayer.name);
    
    NSString *command = [inputController inputForPrompt:@"Press (r) to roll the dice."];
    
    if([command isEqualToString:@"R"])
    {
        [currentPlayer rollDice];
        if(currentPlayer.isGameOver == YES) {
            self.isGameOver = YES;
        }
        self.currentIndex += 1;
    }
    else
    {
        NSLog(@"Not a valid command. Try again.");
    }
    
}

@end
