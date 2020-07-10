//
//  UIView+LSCornerRadius.h
//  2.高效设置圆角
//
//  Created by 梁森 on 2020/7/10.
//  Copyright © 2020 梁森. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (LSCornerRadius)
/// 获取圆形图片
- (UIView *)ls_getViewWithCornerRadius:(CGFloat)cornerRadius;
@end

NS_ASSUME_NONNULL_END
