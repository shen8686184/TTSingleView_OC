//
//  NSString+Ex.h
//  LaiFeng
//
//  Created by xinliu on 14-5-16.
//  Copyright (c) 2014年 live Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(LFURLStringAdditions)

- (NSString*) lf_urlEncode2:(NSStringEncoding)stringEncoding DEPRECATED_MSG_ATTRIBUTE("不建议使用");

+ (BOOL)lf_stringIsNull:(NSString *)string;

- (NSString*) lf_urlDecode:(NSStringEncoding)stringEncoding DEPRECATED_MSG_ATTRIBUTE("不建议使用");
- (NSDictionary*)lf_queryContentsDicUsingEncoding:(NSStringEncoding)encoding DEPRECATED_MSG_ATTRIBUTE("不建议使用");

- (NSURL*)lf_toURL ;
@end
