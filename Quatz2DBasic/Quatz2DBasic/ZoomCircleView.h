//
//  ZoomCircleView.h
//  Quatz2DBasic
//
//  Created by 李根 on 16/6/19.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  外界设置圆的半径, 半径更改, 圆变
 *  图片落下效果
 */
@interface ZoomCircleView : UIView
//  用来接收外界传入的半径
@property(nonatomic, assign)float radius;

@end
