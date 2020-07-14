//
//  UIImageView+LSUIImageView.h
//  2.高效设置圆角
//
//  Created by 梁森 on 2020/7/14.
//  Copyright © 2020 梁森. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (LSUIImageView)

-(UIImage*)ls_drawCircleImageWithRadius:(CGFloat)radius;

@end

NS_ASSUME_NONNULL_END
