//
//  TTSingleView_OCTests.m
//  TTSingleView_OCTests
//
//  Created by 郭立源 on 16/7/20.
//  Copyright © 2016年 郭立源. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TTSingleView_OCTests : XCTestCase

@property (nonatomic) NSString *antiStealingChain;

@end

@implementation TTSingleView_OCTests

- (void)setUp {
    [super setUp];
    _antiStealingChain = @"http://pl-ali.youku.com/playlist/m3u8?ts=1488372434&keyframe=0&pid=8d02c2e207162307&vid=XMTg4NjI0OTY4MA==&type=flv&oip=1779114519&sid=048837243495724a1a030&token=6954&did=5488644f23d78fb4&ev=2&ctype=24&ep=QAbzME0k7paJzLKSTUP%2FtSr1d%2Bg6XxKWqszX1vLbYkLCh%2BzTbfsk7t31ZyA%3D&sid=048837243495724a1a030";
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testAntiStealingChain {
    
    XCTAssertNotNil(_antiStealingChain);
    
    NSDictionary *resultDic = nil;
    resultDic = [self parseAntiStealingChain:_antiStealingChain];
    NSLog(@"resultDic = %@", resultDic);
    
}

- (NSDictionary *)parseAntiStealingChain:(NSString *)antiStealingChain
{
    NSMutableDictionary *resultDic = [[NSMutableDictionary alloc] initWithCapacity:12];
    
    NSArray *resultArray = [_antiStealingChain componentsSeparatedByString:@"?"];
    
    resultArray = [resultArray.lastObject componentsSeparatedByString:@"&"];
    
    [resultArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSArray *fieldsArray = [obj componentsSeparatedByString:@"="];
        
        [resultDic setValue:fieldsArray.lastObject forKey:fieldsArray.firstObject];
        
    }];
    
    return resultDic;
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
