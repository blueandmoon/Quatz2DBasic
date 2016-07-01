//
//  TextView.m
//  Quatz2DBasic
//
//  Created by 李根 on 16/6/15.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "TextView.h"

@implementation TextView

/**
 *

- (void)drawRect:(CGRect)rect {
    
    //  画文字
    NSString *str = @"人人尽说江南好, 游人只合江南老; 春水碧于天, 画船听雨眠; 垆边人似月, 皓腕凝霜雪;";
    
    //  绘制矩形
    //  1. 获取上下文
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    //  绘图
    CGContextAddRect(contextRef, CGRectMake(50, 50, 100, 100));
    // 渲染
    CGContextStrokePath(contextRef);
    
    NSMutableDictionary *md = [NSMutableDictionary dictionary];
    //  设置文字颜色
    md[NSForegroundColorAttributeName] = [UIColor redColor];
    //  设置文字背景颜色
    md[NSBackgroundColorAttributeName] = [UIColor lightGrayColor];
    //  设置文字大小
    md[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    
//    //  将文字绘制到指定的位置
//    [str drawAtPoint:CGPointMake(10, 10) withAttributes:md];
    
    //  将文字绘制到指定的范围内, 如果一行装不下会自动换行, 当文字超出范围就不显示
    [str drawInRect:CGRectMake(50, 50, 100, 100) withAttributes:md];
    
}
 
*/

- (void)drawRect:(CGRect)rect {
    
    
    //  加载图片到内存中
    UIImage *image = [UIImage imageNamed:@"1"];
    
//    //  利用drawAsPatternInRec方法绘制图片到layer, 是通过平铺原有图片
//    [image drawAsPatternInRect:CGRectMake(50, 50, 100, 100)];
    
    //  利用OC方法将图片绘制到layer上
    
//    //  利用DrawInRect芳芳绘制图片到layer, 是通过拉伸原有图片
//    [image drawInRect:CGRectMake(0, 0, 200, 200)];
    
    //  将图片绘制到指定的位置
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
