//
//  YTURLProtectManager.h
//  YTBasePlayer
//
//  Created by 韦兴华 on 16/9/6.
//  Copyright © 2016年 youku. All rights reserved.
//

#import <Foundation/Foundation.h>

// 优酷土豆防盗链模块
// 依赖的系统框架: CommonCrypto

@interface YTURLProtectManager : NSObject

@property (nonatomic, assign) BOOL enableLog;

// 分片地址专用
// @return 加入防盗链逻辑之后的播放地址
// @prram version 防盗链加密版本号，默认 1.0
// @param usrInfo 防盗链相关参数，包含 did, ev, sid, token, oip 参数, 后三者可以从播放接口返回的 @“sid_data” 中取得。
- (NSString *)protectedURLWithOriginURL:(NSString *)url
                                version:(float)version
                                  ctype:(NSString *)ctype
                                 fileid:(NSString *)fileid
                                usrInfo:(NSDictionary *)info;

// M3U8 专用
- (NSString *)protectedM3U8URLWithOriginURL:(NSString *)url
                                    version:(float)version
                                      ctype:(NSString *)ctype
                                        vid:(NSString *)vid
                                    usrInfo:(NSDictionary *)info;
   
@end
