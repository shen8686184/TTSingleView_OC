//
//  UIImage+CutScreen.h
//  LaiFeng
//
//  Created by jiangsongwen on 16/4/18.
//  Copyright © 2016年 live Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LFCutScreenAdditions)
+ (UIImage *)lf_cutScreen DEPRECATED_MSG_ATTRIBUTE("不建议使用，建议使用[view lf_snapshotImage]");
@end
