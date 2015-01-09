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

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (IBAction)panHandler:(UIPanGestureRecognizer *)gesture
{
    CGPoint touchPoint1 = [gesture locationInView:self.view];
    self.nowPlayerOne.center = touchPoint1;
    
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
}

- (IBAction)panHandler2:(UIPanGestureRecognizer *)gesture2
{
    CGPoint touchPoint2 = [gesture2 locationInView:self.view];
    self.nowPlayerTwo.center = touchPoint2;

    if (CGRectContainsPoint(self.labelOne.frame, self.nowPlayerTwo.center))
    
    {
        self.labelOne.text = @"O";
        self.labelOne.textColor = [UIColor redColor];
    }
    
    if (CGRectContainsPoint(self.labelTwo.frame, self.nowPlayerTwo.center))
    {
        self.labelTwo.text = @"O";
        self.labelTwo.textColor = [UIColor redColor];
    }
    
    if (CGRectContainsPoint(self.labelTwo.frame, self.nowPlayerTwo.center))
    {
        self.labelTwo.text = @"O";
        self.labelTwo.textColor = [UIColor redColor];
    }
    
    if (CGRectContainsPoint(self.labelThree.frame, self.nowPlayerTwo.center))
    
    {
        self.labelThree.text = @"O";
        self.labelThree.textColor = [UIColor redColor];
    }
    
    
    
    
    
    
    
    
    
    
}
    

@end
