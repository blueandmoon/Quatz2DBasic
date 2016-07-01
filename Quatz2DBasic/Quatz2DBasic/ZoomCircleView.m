//
//  ZoomCircleView.m
//  Quatz2DBasic
//
//  Created by 李根 on 16/6/19.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "ZoomCircleView.h"

//  实现效果: 把雪花状的图片绘制到view上, 实现图片在视图中下落的效果
//  私有扩展
@interface ZoomCircleView ()
@property(nonatomic, assign)float imageY;

@end

@implementation ZoomCircleView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        NSLog(@"initWithFrame");
        
        //  NSTimer一般用于定时更新一些非界面上的数据, 告诉多久调用一次
        //  使用定时器, 使用该定时器会出现卡顿现象
//        [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateImage) userInfo:nil repeats:YES];
        
        //  CADisplayLink 刷帧, 默认每秒刷新60次
        //  该定时器创建之后, 默认是不会执行的, 需要把它加到消息循环中
        CADisplayLink *display = [CADisplayLink displayLinkWithTarget:self selector:@selector(updateImage)];
        [display addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    }
    return self;
}

- (void)updateImage {
    //  调用该方法重绘画面
    [self setNeedsDisplay];
}

- (void)awakeFromNib {
    NSLog(@"awakeFromNib");
}

- (void)drawRect:(CGRect)rect {
    //  把图片绘制到view上
    //  每次调用该方法对画面进行重绘时, imageY的值就 +5
    self.imageY += 5;
    //  判断, 当雪花超出屏幕时, 让图片从头开始降落
    if (self.imageY > rect.size.height) {
        self.imageY = 0;
    }
    UIImage *image = [UIImage imageNamed:@"1"];
    [image drawAtPoint:CGPointMake(0, _imageY)];
    
    UIImage *image2 = [UIImage imageNamed:@"2"];
    [image2 drawAtPoint:CGPointMake(80, _imageY)];
    
}

/*
- (void)setRadius:(float)radius {
    _radius = radius;
    //  通知自定义的view重新绘制图形
    [self setNeedsDisplay];
    
}

////  如果view是从xib或storyboard中创建出来的会先调用awakefromnib方法
//- (void)awakeFromNib {
//    //  在这里为圆的半径设定一个初始的值
//    self.radius = 20;
//}

- (void)drawRect:(CGRect)rect {
    
    //  获取图形上下文
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    //  绘图
    //  在自定义的view中画一个圆
    CGContextAddArc(contextRef, 100, 100, self.radius, 0, 2 * M_PI, 0);
    //  设置圆的填充颜色
    [[UIColor grayColor] set];
    
    //  渲染
    CGContextFillPath(contextRef);
}
*/


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
