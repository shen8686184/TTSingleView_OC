//
//  Global.m
//  TTSingleView_OC
//
//  Created by 郭立源 on 2016/11/19.
//  Copyright © 2016年 郭立源. All rights reserved.
//

#import "GlobalSetting.h"

@implementation GlobalSetting

+ (instancetype)shareInstance {

    static GlobalSetting *shareObj = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareObj = [[self alloc] init];
    });
    return shareObj;
}

@end
