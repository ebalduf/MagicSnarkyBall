//
//  MagicSnarkyBallModel.m
//  MagicSnarkyBall
//
//  Created by Robynn Balduf on 12/31/12.
//  Copyright (c) 2012 Robynn Balduf. All rights reserved.
//

#import "MagicSnarkyBallModel.h"

@interface MagicSnarkyBallModel()
@property (nonatomic, strong) NSArray *snarkyCommentList;
@end


@implementation MagicSnarkyBallModel

@synthesize snarkyCommentList = _snarkyCommentList;

// Read the flat file into the array and return the array
- (NSArray *)snarkyCommentList
{
    if(_snarkyCommentList == nil)
    {
        _snarkyCommentList = [[NSArray alloc] init];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SnarkyContent" ofType:@"txt"];
        NSData *data = [NSData dataWithContentsOfFile:filePath];
        NSString *string1 = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding ];
        NSString *delimiter = @"\r";
        self.snarkyCommentList = [string1 componentsSeparatedByString:delimiter];
      
        
    }
    return _snarkyCommentList;
}

// Randomly grab one item from the array
- (NSString *)getSnarkyComment{
    int lowerBound = 0;
    int upperBound = self.snarkyCommentList.count;
    int rndValue = lowerBound + arc4random() % (upperBound - lowerBound);
    return [self.snarkyCommentList objectAtIndex:rndValue];
}

@end
