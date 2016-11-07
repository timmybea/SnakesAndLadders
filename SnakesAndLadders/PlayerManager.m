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
    }
    return self;
}

-(void)createPlayers
{
    NSInteger playerNumber = 1;
    while(self.isPlayersComplete == NO) {
        InputController *inputController = [[InputController alloc] init];
        NSString *command = [inputController inputForPrompt:[NSString stringWithFormat:@"Enter player %ld's name or 'submit'", playerNumber]];
        if([command isEqualToString:@"submit"])
        {
            self.isPlayersComplete = YES;
        }
        else
        {
            Player *player = [[Player alloc] initWithName:command];
            [self.players addObject:player];
            playerNumber += 1;
        }
    }
}

@end
