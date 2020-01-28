//
//  DrawingView.m
//  DrawingAppDemo
//
//  Created by William Lennartsson on 2020-01-27.
//  Copyright © 2020 William Lennartsson. All rights reserved.
//

#import "DrawingView.h"
#import "Line.h"

@implementation DrawingView

// Skapa slider för lineWidth
// ColorPicker / knappar för val av färg
// Bakgrundsfärg
// Fade
// Draw / Fill circle
// Sprayburk
// Zoom
// Line tool med curv
// Model

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.lines = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    // Hämta canvas
    CGContextRef context = UIGraphicsGetCurrentContext();
    // Starta en ny path
    CGContextBeginPath(context);
    // Lägga till lines i path
    for (Line *line in self.lines){
        // MoveTo
        CGContextMoveToPoint(context, line.start.x, line.start.y);
        // AddLine
        CGContextAddLineToPoint(context, line.end.x, line.end.y);
    }
    // Settings
    CGContextSetLineWidth(context, 3);
    CGContextSetRGBStrokeColor(context, 0, 0, 1, 1);
    
    // Stroke
    CGContextStrokePath(context);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // Första x,y
    CGPoint point = [[touches anyObject] locationInView: self];
    self.lastPoint = point;
    [self setNeedsDisplay];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // Andra - n  x,y
    CGPoint newPoint = [[touches anyObject] locationInView:self];
    Line *line = [[Line alloc]
                  initWithStart:self.lastPoint andEnd:newPoint];
    [self.lines addObject:line];
    self.lastPoint = newPoint;
    [self setNeedsDisplay];
}

@end
