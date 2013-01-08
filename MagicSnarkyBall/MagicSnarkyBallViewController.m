//
//  MagicSnarkyBallViewController.m
//  MagicSnarkyBall
//
//  Created by Robynn Balduf on 12/31/12.
//  Copyright (c) 2012 Robynn Balduf. All rights reserved.
//

#import "MagicSnarkyBallViewController.h"


@interface MagicSnarkyBallViewController ()
@end

@implementation MagicSnarkyBallViewController

@synthesize snarkyAnswer = _snarkyAnswer;
@synthesize snarkyBrain = _snarkyBrain;
@synthesize snarkyImage = _snarkyImage;
@synthesize backgroundPic = _backgroundPic;

- (void)viewDidLoad
{
    _snarkyBrain = [[MagicSnarkyBallModel alloc] init ];
    [super viewDidLoad];
}

- (MagicSnarkyBallViewController *)init
{
    self = [super init];
    self.snarkyAnswer.editable = NO;
    
    //I'm not doing anything with this image right now
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"IMG_1337" ofType:@"JPG"];
    self.snarkyImage = [[UIImage alloc] init];
    self.snarkyImage = [UIImage imageWithContentsOfFile:filePath];
    self.backgroundPic.image = self.snarkyImage;
    
    return self;
}

//Gesture stuff
- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)viewDidAppear:(BOOL)animated {
    [self becomeFirstResponder];
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
}

// Call the model for a text string comment and assign to the text box
- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
    self.snarkyAnswer.text = (NSString *)self.snarkyBrain.getSnarkyComment;
     
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
}

@end
