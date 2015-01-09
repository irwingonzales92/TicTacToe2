//
//  ViewController.m
//  TicTacToe2
//
//  Created by Irwin Gonzales on 1/8/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *labelOne;
@property (strong, nonatomic) IBOutlet UILabel *labelTwo;
@property (strong, nonatomic) IBOutlet UILabel *labelThree;
@property (strong, nonatomic) IBOutlet UILabel *labelFour;
@property (strong, nonatomic) IBOutlet UILabel *labelFive;
@property (strong, nonatomic) IBOutlet UILabel *labelSix;
@property (strong, nonatomic) IBOutlet UILabel *labelSeven;
@property (strong, nonatomic) IBOutlet UILabel *labelEight;
@property (strong, nonatomic) IBOutlet UILabel *labelNine;
@property (strong, nonatomic) IBOutlet UILabel *nowPlayerOne;
@property (strong, nonatomic) IBOutlet UILabel *nowPlayerTwo;

@property BOOL player1;

@property CGPoint xOriginalCenter; //store initial X position (for animation)
@property CGPoint oOriginalCenter;  //store initial O position (for animation)

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.player1 = TRUE;  // first turn is Player's 1 turn
    self.xOriginalCenter = self.nowPlayerOne.center; // storing initial X position
    self.oOriginalCenter = self.nowPlayerTwo.center; // storing initial O position
}

- (IBAction)panHandler:(UIPanGestureRecognizer *)gesture
{
    CGPoint touchPoint = [gesture locationInView:self.view]; //using a single touchPoint
    
    if (self.player1) // if it's player 1 turn, do this...
    {
        self.nowPlayerOne.center = touchPoint;
    
        if (CGRectContainsPoint(self.labelOne.frame, self.nowPlayerOne.center))
        {
            self.labelOne.text = @"X";
            self.labelOne.textColor = [UIColor blueColor];
            self.player1 = FALSE; //as soon as the label changed, we want to start the second player's turn.

        }
    
        if (CGRectContainsPoint(self.labelTwo.frame, self.nowPlayerOne.center))
        {
            self.labelTwo.text = @"X";
            self.labelTwo.textColor = [UIColor blueColor];
            self.player1 = FALSE; //as soon as the label changed, we want to start the second player's turn.

        }
    
        if (CGRectContainsPoint(self.labelThree.frame, self.nowPlayerOne.center))
        {
            self.labelThree.text = @"X";
            self.labelThree.textColor = [UIColor blueColor];
            self.player1 = FALSE; //as soon as the label changed, we want to start the second player's turn.
        }
    }
    else if (gesture.state == UIGestureRecognizerStateEnded) // if it's not the first player turn AND the pan gesture ended, do this...
    {
        // same as the code above but to the "o" label and player2
         self.nowPlayerTwo.center = touchPoint;

        if (CGRectContainsPoint(self.labelOne.frame, self.nowPlayerTwo.center))

        {
            self.labelOne.text = @"O";
            self.labelOne.textColor = [UIColor redColor];
            self.player1 = TRUE;

        }

        if (CGRectContainsPoint(self.labelTwo.frame, self.nowPlayerTwo.center))
        {
            self.labelTwo.text = @"O";
            self.labelTwo.textColor = [UIColor redColor];
            self.player1 = TRUE;

        }

        if (CGRectContainsPoint(self.labelThree.frame, self.nowPlayerTwo.center))

        {
            self.labelThree.text = @"O";
            self.labelThree.textColor = [UIColor redColor];
            self.player1 = TRUE;
            
        }
    }
}

@end
