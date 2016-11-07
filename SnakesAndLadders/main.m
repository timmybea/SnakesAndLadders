//
//  main.m
//  SnakesAndLadders
//
//  Created by Tim Beals on 2016-11-06.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputController.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        InputController *inputController = [[InputController alloc] init];
        PlayerManager *playerManager = [[PlayerManager alloc] init];
        
        [playerManager createPlayers];
        
//        while(player1.isGameOver == NO)
//        {
//            NSString *command =[inputController inputForPrompt:@"press (r) to roll the dice."];
//            
//            if([command isEqualToString:@"r"])
//            {
//                [player1 rollDice];
//            }
//            else{
//                NSLog(@"Not a valid command. Try again.");
//            }
//        }
    }
    return 0;
}
