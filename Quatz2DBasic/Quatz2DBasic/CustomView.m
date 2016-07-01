//
//  CustomView.m
//  Quatz2DBasic
//
//  Created by 李根 on 16/6/15.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (void)drawRect:(CGRect)rect {
    //  获取上下文
    CGContextRef contexxtRef = UIGraphicsGetCurrentContext();
    //  保存初始图形的上下文
    CGContextSaveGState(contexxtRef);
    //  绘图
    //  第一条线
    CGContextMoveToPoint(contexxtRef, 20, 100);
    CGContextAddLineToPoint(contexxtRef, 100, 320);
    
    //  设置第一条线的状态
    //  设置线条的宽度
    CGContextSetLineWidth(contexxtRef, 12);
    //  设置线条的颜色
    [[UIColor brownColor] set];
    //  设置线条两端的样式为圆角
    CGContextSetLineCap(contexxtRef, kCGLineCapRound);
    //  对线条进行渲染
    CGContextStrokePath(contexxtRef);
    
    //  还原初始时的上下文
    CGContextRestoreGState(contexxtRef);
    //  第二条线
    CGContextMoveToPoint(contexxtRef, 30, 100);
    CGContextAddLineToPoint(contexxtRef, 80, 200);
    
    //  要想让第二条线的样式不同于第一条, 就要清空他的状态, 或者也可以先渲染第二条线, 然后渲染第一条线, 这样第一条先到设置的各种样式就不会影响到前面绘制的线
//    CGContextSetLineWidth(contexxtRef, 1);
//    [[UIColor redColor] set];
//    CGContextSetLineCap(contexxtRef, kCGLineCapButt);
    
    
    //  渲染
    CGContextStrokePath(contexxtRef);
}












/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
