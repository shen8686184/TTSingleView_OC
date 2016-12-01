//
//  Push1ViewController.m
//  TTSingleView_OC
//
//  Created by 郭立源 on 2016/11/15.
//  Copyright © 2016年 郭立源. All rights reserved.
//

#import "Push1ViewController.h"
#import "PushViewController.h"
#import "GlobalSetting.h"

@interface Push1ViewController ()

@end

@implementation Push1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss)];
    [self.view addGestureRecognizer:gesture];

    
    self.view.backgroundColor = [UIColor greenColor];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor blueColor];
    btn.frame = CGRectMake(100, 100, 80, 60);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(showNextVc) forControlEvents:UIControlEventTouchUpInside];

}

- (void)showNextVc {
    
//    [self.navigationController pushViewController:[GlobalSetting shareInstance].pushVc  animated:YES];

//    [self presentViewController:[GlobalSetting shareInstance].pushVc animated:YES completion:nil];
    [self presentViewController:[PushViewController new] animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dismiss {

    [self dismissViewControllerAnimated:YES completion:nil];
    
    if (self.dismissed) {
        self.dismissed();
    }
  
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
