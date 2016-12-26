//
//  TestWebViewController.m
//  LaifengSDK
//
//  Created by 郭立源 on 2016/12/9.
//  Copyright © 2016年 wangxiaoxiang. All rights reserved.
//

#import "TestWebViewController.h"


@interface TestWebViewController () <UIWebViewDelegate >

@property (nonatomic,weak)UIWebView * webView;

@end

@implementation TestWebViewController



- (void)viewDidLoad {

    [super viewDidLoad];
    [self initWebView];
}

/**
 *  初始化webView
 */
-(void)initWebView{
    UIWebView *webView = [[UIWebView alloc]init];
    self.webView = webView;
    webView.frame = self.view.bounds;
    [self.view addSubview:webView];
    webView.delegate = self;
    
    self.webView.mediaPlaybackRequiresUserAction = YES;
    //http://tv.sohu.com/20150713/n416636681.shtml
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@", @"http://www.iqiyi.com/v_19rron8psw.html?src=focustext_2_20130410_1#curid=378627300_481ef4234d04240f8e3526ba4d503a1d"]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request ];
}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@":%@----:%ld",request.URL,(long)navigationType);
    
    //防止调回视频对应的客户端
    NSString *urlStr = request.URL.absoluteString;
    if ([urlStr rangeOfString:@"sohuvideo:"].location != NSNotFound //拦截搜狐
        || [urlStr rangeOfString:@"action.cmd"].location != NSNotFound) {
        return NO;
    }else{
        return YES;
    }
}



@end
