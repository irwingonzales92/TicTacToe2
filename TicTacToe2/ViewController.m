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

@property BOOL player1; // player1 = TRUE (1) , player2 = FALSE (0)

@property CGPoint xOriginalCenter; //store initial X position (for animation)
@property CGPoint oOriginalCenter;  //store initial O position (for animation)

@property CGPoint touchPoint;

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

        self.nowPlayerOne.center = touchPoint; // makes center of player be touched point
    
        if (CGRectContainsPoint(self.labelOne.frame, self.nowPlayerOne.center))
        {
            self.labelOne.text = @"X";
            self.labelOne.textColor = [UIColor blueColor];
        }

        if (CGRectContainsPoint(self.labelTwo.frame, self.nowPlayerOne.center))
        {
            self.labelTwo.text = @"X";
            self.labelTwo.textColor = [UIColor blueColor];
        }
    
        if (CGRectContainsPoint(self.labelThree.frame, self.nowPlayerOne.center))
        {
            self.labelThree.text = @"X";
            self.labelThree.textColor = [UIColor blueColor];
        }
        if (gesture.state == UIGestureRecognizerStateEnded) // when drag stop
        {
            self.nowPlayerOne.center = self.xOriginalCenter; // drag player back to original position
            self.touchPoint = CGPointZero; // set touched point back to zero (otherwise will be a endless loop)
            self.player1 = FALSE; //as soon as the label changed, we want to start the second player's turn.
        }
    }
    else // second player's turn
    {
        touchPoint = [gesture locationInView:self.view]; //reset tocuhed point to current location
        // same code as above
        self.nowPlayerTwo.center = touchPoint;

        if (CGRectContainsPoint(self.labelOne.frame, self.nowPlayerTwo.center))

        {
            self.labelOne.text = @"O";
            self.labelOne.textColor = [UIColor redColor];
        }

        if (CGRectContainsPoint(self.labelTwo.frame, self.nowPlayerTwo.center))
        {
            self.labelTwo.text = @"O";
            self.labelTwo.textColor = [UIColor redColor];        }

        if (CGRectContainsPoint(self.labelThree.frame, self.nowPlayerTwo.center))

        {
            self.labelThree.text = @"O";
            self.labelThree.textColor = [UIColor redColor];
        }
        if (gesture.state == UIGestureRecognizerStateEnded)
        {
            self.nowPlayerTwo.center = self.oOriginalCenter;
            self.touchPoint = CGPointZero;
            self.player1 = TRUE;
        }
    }
}


@end
