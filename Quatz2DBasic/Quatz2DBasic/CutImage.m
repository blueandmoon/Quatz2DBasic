//
//  CutImage.m
//  Quatz2DBasic
//
//  Created by 李根 on 16/6/16.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "CutImage.h"

@implementation CutImage

- (void)drawRect:(CGRect)rect {
    
    /*
    //  画圆, 以便以后指定可以显示图片的范围
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(contextRef, CGRectMake(100, 100, 50, 50));
    
    //  裁剪
    CGContextClip(contextRef);
    UIImage *image = [UIImage imageNamed:@"3"];
    [image drawAtPoint:CGPointMake(100, 100)];
     */
    
    //  画三角形, 以便以后指定图片的范围
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(contextRef, 100, 100);
    CGContextAddLineToPoint(contextRef, 60, 150);
    CGContextAddLineToPoint(contextRef, 140, 150);
    CGContextClosePath(contextRef);

    //  注意, 指定范围(也就是指定剪切的方法一定要在绘制范围之前调用)
    CGContextClip(contextRef);
    UIImage *image = [UIImage imageNamed:@"3"];
    [image drawAtPoint:CGPointMake(100, 100)];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
