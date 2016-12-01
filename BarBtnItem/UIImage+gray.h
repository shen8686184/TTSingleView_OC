//
//  UIImage+gray.h
//  TTSingleView_OC
//
//  Created by 郭立源 on 2016/10/24.
//  Copyright © 2016年 郭立源. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (gray)

- (UIImage*)getGrayImage;


//变暗一张图片
- (UIImage *)darkenImageAlpha:(CGFloat)alpha;

@end
