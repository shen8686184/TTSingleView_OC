//
//  UIImage+gray.m
//  TTSingleView_OC
//
//  Created by 郭立源 on 2016/10/24.
//  Copyright © 2016年 郭立源. All rights reserved.
//

#import "UIImage+gray.h"

@implementation UIImage (gray)


//变灰色

- (UIImage*)getGrayImage {
    
//    int width = self.size.width;
//    
//    int height = self.size.height;
//    
//    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceGray();
//    
//    CGContextRef context = CGBitmapContextCreate (nil,width,height,8,0.9,colorSpace,kCGImageAlphaOnly);
//    
//    CGColorSpaceRelease(colorSpace);
//    
//    
//    
//    if (context == NULL) {
//        
//        return nil;
//        
//    }
//    
//    
//    
//    CGContextDrawImage(context,CGRectMake(0, 0, width, height), self.CGImage);
//    
//    UIImage *grayImage = [UIImage imageWithCGImage:CGBitmapContextCreateImage(context)];
//    
//    CGContextRelease(context);
//    
//    
//    
//    return grayImage;
//    
//    
//    UIImage *image = [UIImage imageNamed:@"normal.png"];
//    UIGraphicsBeginImageContextWithOptions(image.size, NO, [UIScreen mainScreen].scale);
//    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)
//            blendMode:kCGBlendModeDarken
//                alpha:0.6];
//    UIImage *highlighted = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
    
//    kCGBlendModeNormal,
//    kCGBlendModeMultiply,
//    kCGBlendModeScreen,
//    kCGBlendModeOverlay,
//    kCGBlendModeDarken,
//    kCGBlendModeLighten,
//    kCGBlendModeColorDodge,
//    kCGBlendModeColorBurn,
//    kCGBlendModeSoftLight,
//    kCGBlendModeHardLight,
//    kCGBlendModeDifference,
//    kCGBlendModeExclusion,
//    kCGBlendModeHue,
//    kCGBlendModeSaturation,
//    kCGBlendModeColor,
//    kCGBlendModeLuminosity,
    
    
    return nil;
}

- (UIImage *)darkenImageAlpha:(CGFloat)alpha {

    UIGraphicsBeginImageContextWithOptions(self.size, NO, [UIScreen mainScreen].scale);
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)
            blendMode:kCGBlendModeDarken
                alpha:alpha];
    UIImage *highlighted = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return highlighted;
}


@end
