//
//  Global.h
//  TTSingleView_OC
//
//  Created by 郭立源 on 2016/11/19.
//  Copyright © 2016年 郭立源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PushViewController.h"

@interface GlobalSetting : NSObject

+ (instancetype)shareInstance;

@property (nonatomic) UIViewController *pushVc;


@end
