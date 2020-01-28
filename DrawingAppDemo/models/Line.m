//
//  Line.m
//  DrawingAppDemo
//
//  Created by William Lennartsson on 2020-01-27.
//  Copyright © 2020 William Lennartsson. All rights reserved.
//

#import "Line.h"

@implementation Line

- (instancetype)initWithStart: (CGPoint)start andEnd:(CGPoint)end
{
    self = [super init];
    if (self) {
        self.start = start;
        self.end = end;
    }
    return self;
}

@end
