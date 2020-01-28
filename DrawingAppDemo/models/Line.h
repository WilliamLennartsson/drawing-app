//
//  Line.h
//  DrawingAppDemo
//
//  Created by William Lennartsson on 2020-01-27.
//  Copyright © 2020 William Lennartsson. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Line : NSObject
// x, y för start
// CGPoint -> x, y
@property (nonatomic) CGPoint start;
// x, y för end
@property (nonatomic) CGPoint end;
- (instancetype)initWithStart: (CGPoint)start andEnd:(CGPoint)end;
@end

NS_ASSUME_NONNULL_END
