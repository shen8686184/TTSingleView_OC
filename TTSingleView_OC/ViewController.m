//
//  ViewController.m
//  TTSingleView_OC
//
//  Created by 郭立源 on 16/7/20.
//  Copyright © 2016年 郭立源. All rights reserved.
//

#import "ViewController.h"
#import "LFUIBarButtonItem+CustomView.h"
#import "PushViewController.h"
#import "GlobalSetting.h"



@interface ViewController ()


@end

@implementation ViewController {
    
    NSString *_latitude;
    NSString *_longitude;
    // sssssss
}



- (void)viewDidLoad {
    [super viewDidLoad];
//    _latitude = @"11111";
    
    BOOL have =  [@"http://v.laifeng.com/login/init/m" hasPrefix:@"http://v.laifeng.com/login/init/m"];
    
    _longitude = _latitude ? :@"22222";
    
    CGRect frame =  CGRectInset(self.view.bounds, 44, 44);
    
    UIBarButtonItem *rightItem = [UIBarButtonItem lf_barButtonItemWithTitle:@"完成"
                                                                       font:[UIFont systemFontOfSize:16.f]
                                                                      color:[UIColor blackColor]
                                                           highlightedColor:nil
                                                              disabledColor:[UIColor redColor]
                                                                     margin:0
                                                                  darkAlpha:0.6
                                                                     target:self
                                                                     action:nil
                                                                   position:LFCustomItemPositionRight];
    
//    rightItem.enabled = NO;
    
    
    self.navigationItem.rightBarButtonItem = rightItem;
        

    UIImageView *buttonIV = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, 80, 30)];
    buttonIV.layer.borderColor = [UIColor redColor].CGColor;
    buttonIV.layer.borderWidth = 0.5f;
    buttonIV.layer.cornerRadius = buttonIV.frame.size.height /2 ;
    
    [self.view addSubview:buttonIV];
    
    
   UIView *  _actorView = [[UIView alloc] initWithFrame:CGRectMake(35/2, 150, 80, 35)];
    _actorView.layer.borderColor = [UIColor redColor].CGColor;
    _actorView.layer.borderWidth = 0.3f;
    _actorView.layer.masksToBounds = YES;
    _actorView.layer.cornerRadius = _actorView.frame.size.height/2;
    
    [self.view addSubview:_actorView];
    
//    UIBarButtonItem *lItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"navbar_arrow_back"] style:UIBarButtonItemStylePlain target:self action:@selector(lalalla)];
//    self.navigationItem.leftBarButtonItem = lItem;
    
    self.navigationController.navigationBar.barTintColor = [UIColor yellowColor];
    
}

- (void)addBtnClick {
    
    
}
- (IBAction)broke:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://baidu.com"] options:@{} completionHandler:^(BOOL success) {
        
    }];
    
    
    UIViewController *vc = [PushViewController new];
    
//    UINavigationController *nv = [[UINavigationController alloc] initWithRootViewController:vc];
    
//    [self presentViewController:vc animated:YES completion:^{
//    
//    }] ;
    
    [self.navigationController pushViewController:vc animated:YES];
//     [GlobalSetting shareInstance].pushVc = vc;
//    [self presentViewController:[[UINavigationController alloc] initWithRootViewController:vc] animated:YES completion:nil];
//    [self.navigationController pushViewController:vc animated:YES];
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(lalala) name:@"123" object:vc];
   
}

- (void)lalala
{

}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"123" object:nil];
}


@end
