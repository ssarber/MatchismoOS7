//
//  Deck.h
//  MatchismoOS7
//
//  Created by ssarber on 11/8/13.
//  Copyright (c) 2013 Zuk Gek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
