//
//  CardGameViewController.m
//  MatchismoOS7
//
//  Created by ssarber on 10/31/13.
//  Copyright (c) 2013 Zuk Gek. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipeLabel;
@property (nonatomic) int flipCount;

@end

@implementation CardGameViewController

-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipeLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♣" forState:UIControlStateNormal];
    }
    self.flipCount++; // calls both setter and getter
}


@end
