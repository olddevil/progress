//
//  ProgressView.m
//  Progress
//
//  Created by olddevil on 2019/1/19.
//  Copyright © 2019 olddevil. All rights reserved.
//

#import "ProgressView.h"

@implementation ProgressView

- (void)setProgress:(CGFloat)progress {
    _progress = progress;
    
    self.progressLabel.text = [NSString stringWithFormat:@"%.2f%%", progress * 100];
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGPoint center = CGPointMake(rect.size.width / 2, rect.size.height / 2);
    CGFloat radius = rect.size.width / 2;
    CGFloat startAngle = -M_PI_2;
    CGFloat endAngle = -M_PI_2 + M_PI * 2 * self.progress;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
    CGContextSetLineWidth(ctx, 2);
    [[UIColor greenColor] set];
    CGContextAddPath(ctx, path.CGPath);
    CGContextStrokePath(ctx);
}


@end
