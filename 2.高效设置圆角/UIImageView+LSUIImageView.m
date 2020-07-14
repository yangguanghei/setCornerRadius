//
//  UIImageView+LSUIImageView.m
//  2.高效设置圆角
//
//  Created by 梁森 on 2020/7/14.
//  Copyright © 2020 梁森. All rights reserved.
//

#import "UIImageView+LSUIImageView.h"

@implementation UIImageView (LSUIImageView)

-(UIImage*)ls_drawCircleImageWithRadius:(CGFloat)radius{
    // 贝塞尔曲线+Core Graphics
    UIGraphicsBeginImageContextWithOptions(self.bounds.size,NO, [UIScreen mainScreen].scale);
    [[UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:radius] addClip];
    [self drawRect:self.bounds];
    UIImage*output =UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return output;
}


@end
