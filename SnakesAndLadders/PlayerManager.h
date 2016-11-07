//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by Tim Beals on 2016-11-07.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerManager : NSObject

@property (nonatomic) NSMutableArray *players;
@property (nonatomic) BOOL isPlayersComplete;

-(void)createPlayers;

@end
