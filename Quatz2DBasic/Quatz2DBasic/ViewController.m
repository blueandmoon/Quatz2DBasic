//
//  ViewController.m
//  Quatz2DBasic
//
//  Created by 李根 on 16/6/15.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "TextView.h"
#import "RectangleView.h"
#import "CutImage.h"
#import "ZoomCircleView.h"
#import "DrawPath.h"

@interface ViewController ()
@property(nonatomic, strong)ZoomCircleView *circleView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
//    CustomView *view = [[CustomView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    view.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:view];
    
//    TextView *view = [[TextView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    view.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:view];
    
//    RectangleView *rectView = [[RectangleView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    [self.view addSubview:rectView];
//    rectView.backgroundColor = [UIColor whiteColor];
//    rectView.layer.borderWidth = 1;
    
//    CutImage *cutView = [[CutImage alloc] init];
//    cutView.frame = self.view.frame;
//    [self.view addSubview:cutView];
//    cutView.backgroundColor = [UIColor whiteColor];
    
    /*
    _circleView = [[ZoomCircleView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    _circleView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_circleView];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 10, 100, 50);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(changeRadius:) forControlEvents:UIControlEventTouchUpInside];
    */
    
//    DrawPath *drawView = [[DrawPath alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    drawView.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:drawView];
//    

    //  实现信纸条纹效果
    /**
     *  1. 生成一张以后用以平铺的小图片, 画矩形, 画线条
     *  2. 从上下文中取出图片设置为背景, 黑乎乎的?(其他地方是透明的, 控制器的颜色, 如果不设置默认是黑色的.)
     */
    //  1. 生成一张以后用于平铺的小图片
    CGSize size = CGSizeMake(self.view.frame.size.width, 35);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    
    //  2. 画矩形
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGFloat height = 35;
    CGContextAddRect(contextRef, CGRectMake(0, 0, self.view.frame.size.width, height));
    [[UIColor whiteColor] set];
    CGContextFillPath(contextRef);
    
    //  3. 画线条
    CGFloat lineWidth = 2;
    CGFloat lineY = height - lineWidth;
    CGFloat lineX = 0;
    CGContextMoveToPoint(contextRef, lineX, lineY);
    CGContextAddLineToPoint(contextRef, self.view.frame.size.width, lineY);
    [[UIColor blackColor] set];
    CGContextStrokePath(contextRef);
    
    //
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIColor *color = [UIColor colorWithPatternImage:image];
    self.view.backgroundColor = color;
    
    
}

- (void)changeRadius:(id)sender {
    _circleView.radius = 100;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




















@end
