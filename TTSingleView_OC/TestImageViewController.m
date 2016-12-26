//
//  TestImageViewController.m
//  TTSingleView_OC
//
//  Created by 郭立源 on 2016/12/23.
//  Copyright © 2016年 郭立源. All rights reserved.
//

#import "TestImageViewController.h"
#import <LFCategory/LFCategory.h>
//#import "LFCategory.h"

@interface TestImageViewController ()

@end

@implementation TestImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor redColor];
    
    UIImageView *imagView = [[UIImageView alloc] initWithFrame:self.view.frame];
    imagView.image = [UIImage imageNamed:@"1710241958510869579.jpg"];
    [self.view addSubview:imagView];
    
    UIBarButtonItem *buttonItem =  [UIBarButtonItem lf_BarButtonItemWithImage:[UIImage imageNamed:@"mine_title_more"] heightLightImage:nil margin:0 darkAlpha:0.6 tintColor:[UIColor blueColor] target:self action:nil position:LFCustomItemPositionRight];
    
//    buttonItem = [UIBarButtonItem lf_barButtonItemWithTitle:@"ssss嗲嗲哦" font:[UIFont systemFontOfSize:16.f] color:[UIColor greenColor] highlightedColor:nil disabledColor:nil margin:0 darkAlpha:0.5 target:self action:nil position:LFCustomItemPositionRight];
    
    self.navigationItem.rightBarButtonItem = buttonItem;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
