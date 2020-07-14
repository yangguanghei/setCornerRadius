//
//  UIView+LSCornerRadius.m
//  2.高效设置圆角
//
//  Created by 梁森 on 2020/7/10.
//  Copyright © 2020 梁森. All rights reserved.
//

#import "UIView+LSCornerRadius.h"

@implementation UIView (LSCornerRadius)

- (UIView *)ls_getViewWithCornerRadius:(CGFloat)cornerRadius{
    // 贝塞尔曲线+CAShapeLayer
    CGSize size = CGSizeMake(cornerRadius, cornerRadius);
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:size];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    //设置大小
    maskLayer.frame = self.bounds;
    //设置图形样子
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
    return self;
}




@end
