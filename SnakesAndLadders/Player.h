//
//  Player.h
//  SnakesAndLadders
//
//  Created by Tim Beals on 2016-11-06.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, assign) NSInteger currentSquare;
@property (nonatomic) NSDictionary *gameLogic;
@property (nonatomic) BOOL isGameOver;

- (void)rollDice;

@end
