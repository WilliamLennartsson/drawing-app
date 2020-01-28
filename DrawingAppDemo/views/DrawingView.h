//
//  DrawingView.h
//  DrawingAppDemo
//
//  Created by William Lennartsson on 2020-01-27.
//  Copyright © 2020 William Lennartsson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DrawingView : UIView
@property (nonatomic) NSMutableArray *lines;
@property (nonatomic) CGPoint lastPoint;
@end

NS_ASSUME_NONNULL_END
