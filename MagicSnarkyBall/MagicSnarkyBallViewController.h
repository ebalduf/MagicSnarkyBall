//
//  MagicSnarkyBallViewController.h
//  MagicSnarkyBall
//
//  Created by Robynn Balduf on 12/31/12.
//  Copyright (c) 2012 Robynn Balduf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MagicSnarkyBallModel.h"

@interface MagicSnarkyBallViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *snarkyAnswer;
@property MagicSnarkyBallModel *snarkyBrain;
@property UIImage *snarkyImage;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundPic;

@end
