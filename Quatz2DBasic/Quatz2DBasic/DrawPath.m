//
//  DrawPath.m
//  Quatz2DBasic
//
//  Created by 李根 on 16/6/19.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "DrawPath.h"

@implementation DrawPath

/**
 *  在画线的时候, 方法的内部默认创建一个path. 它把路径都放在了path里面去.
 *  1. 创建路径 CGMutablePathRef 调用该方法相当于创建了一个路径, 这个路径用来保存绘图信息.
 *  2. 把绘图信息添加到路径里边
 *      以前的方法是把点的位置添加到contextRef(图形上下文信息)中, context默认会在内部创建
 *      一个path用来保存绘图信息
 *      在图形上下文中有一块存储空间专门用来存储绘图信息, 这块空间就是CGMutalbePathRef.
 *  3. 把路径添加到上下文中.
 *
 *
 */

- (void)drawRect:(CGRect)rect {
    
    /*
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(contextRef, 20, 20);
    CGContextAddLineToPoint(contextRef, 200, 300);
    //  渲染
    CGContextStrokePath(contextRef);
    */
   
    /*
#pragma mark    - 上面代码与下面等价
    //  采用path画图易于阅读和区分, 一个path一条路径
    
    //  1. 获取图形上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //  2. 绘图
    //  2.1 创建一条直线绘图的路径
    //  注意: 但凡通过Quartz2D中带有create/copy/retain方法创建出来的值都必须要释放
    CGMutablePathRef path = CGPathCreateMutable();
    //  2.2 把绘图信息添加到路径里
    CGPathMoveToPoint(path, NULL, 20, 20);
    CGPathAddLineToPoint(path, NULL, 200, 300);
    //  2.3 把路径添加到上下文中
    //  把绘制直线的绘图信息保存到图形上下文中
    CGContextAddPath(context, path);
    
    //  渲染
    CGContextStrokePath(context);
    
    //  释放前面创建的两条路径
    //  第一中方法
    CGPathRelease(path);
    //  第二种方法
//    CFRelease(path);
    */
    
    
    //  获取图形上下文
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    //  绘图
    //  创建一条绘图的路径
    //  但凡Quartz2D中带有create/copy/retain方法创建出来的值都必须要释放
    CGMutablePathRef path = CGPathCreateMutable();
    
    //  把绘图信息添加到路径里
    CGPathMoveToPoint(path, NULL, 20, 20);
    CGPathAddLineToPoint(path, NULL, 200, 300);
    
    //  把路径添加到上下文中
    //  把绘制直线的绘图信息保存到图形上下文中
    CGContextAddPath(contextRef, path);
    
    //  画一个圆
    //  创建一个画圆的路径(注意: 这里是可变的, 不是CGPathRef)
    CGMutablePathRef pathCircle = CGPathCreateMutable();
    
    //  把圆的绘图信息添加到路径里
    CGPathAddEllipseInRect(pathCircle, NULL, CGRectMake(50, 50, 100, 100));
    
    //  把圆的路径添加到图形上下文中
    CGContextAddPath(contextRef, pathCircle);
    
    //  渲染
    CGContextStrokePath(contextRef);
    
//    //  释放
//    CGPathRelease(path);
//    CGPathRelease(pathCircle);
    //  第二种, CFRealease属于更底层的cocoaFoundation框架
    CFRelease(path);
    CFRelease(pathCircle);
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
