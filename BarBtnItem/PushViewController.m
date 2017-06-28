//
//  PushViewController.m
//  TTSingleView_OC
//
//  Created by 郭立源 on 2016/11/15.
//  Copyright © 2016年 郭立源. All rights reserved.
//

#import "PushViewController.h"
#import "Push1ViewController.h"
#import "InPushView.h"

@interface PushViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
   // UIGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(miss)];
    //[self.view addGestureRecognizer:gesture];
    
    
    InPushView *bV = [[InPushView alloc] initWithFrame:CGRectMake(40, 100, 80, 80)];
    bV.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:bV];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor blueColor];
    btn.frame = CGRectMake(10, 10, 10, 10);
    [btn addTarget:self action:@selector(pushto) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];
    _button = btn;
    [bV addSubview:btn];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    
}

- (void)pushto {

    if (_button.frame.size.width == 10) {
                _button.frame = CGRectMake(10, 10, 15, 15);
            } else {
                _button.frame = CGRectMake(10, 10, 10, 10);
            }
}

- (void)miss {
    

    
}


//-(BOOL)shouldAutorotate {
//    return YES;
//}
//
//- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
//    return UIInterfaceOrientationMaskLandscape;
//    
//    
////    navigationController.supportedInterface = UIInterfaceOrientationMaskLandscape;
////    navigationController.preferredInterface = UIInterfaceOrientationLandscapeRight;
//}
//
//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
//       return UIInterfaceOrientationLandscapeRight;
//}
//

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
