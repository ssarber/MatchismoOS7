//
//  Deck.m
//  MatchismoOS7
//
//  Created by ssarber on 11/8/13.
//  Copyright (c) 2013 Zuk Gek. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards; // of Card
@end

@implementation Deck



- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if(atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}


-(Card *)drawRandomCard { }


@end
