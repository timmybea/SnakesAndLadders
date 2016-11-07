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
        PlayerManager *playerManager = [[PlayerManager alloc] init];
        BOOL isGameOver = NO;

        [playerManager createPlayers];
        
        while(isGameOver == NO)
        {
            [playerManager play];
            if(playerManager.isGameOver == YES)
            {
                isGameOver = YES;
            }
        }
    }
    return 0;
}
