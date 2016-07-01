//
//  RectangleView.m
//  Quatz2DBasic
//
//  Created by 李根 on 16/6/16.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "RectangleView.h"

@implementation RectangleView

//  旋转的时候是整个layer都旋转了
- (void)drawRect:(CGRect)rect {
    
    //  画四边形
    //  获取图形上下文
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    //  矩阵操作
    //  注意: 设置矩阵操作必须要在添加绘图信息之前
//    //  旋转45度
//    CGContextRotateCTM(contextRef, M_PI_4);
    
    //  缩放
    /**
     *  CGContextScaleCTM(<#CGContextRef c#>, <#CGFloat sx#>, <#CGFloat sy#>)
     *  图形上下文   x方向缩放比例, y方向缩放比例
     */
//    CGContextScaleCTM(contextRef, 0.5, 1.5);
    
    /**
     *  位移
     *
     *  @param c#>  图形上下文 description#>
     *  @param tx#> x方向位移 description#>
     *  @param ty#> y方向位移 description#>
     *
     *  @return
     */
    CGContextTranslateCTM(contextRef, -50, 100);
    
    //  绘图
    CGContextAddRect(contextRef, CGRectMake(300, 200, 100, 100));
    
    //  画圆
    CGRect rct = CGRectMake(300, 200, 100, 100);
    CGContextAddEllipseInRect(contextRef, rct);
    
    //  渲染
    CGContextStrokePath(contextRef);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
