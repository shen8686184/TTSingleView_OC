//
//  PushViewController.m
//  TTSingleView_OC
//
//  Created by 郭立源 on 2016/11/15.
//  Copyright © 2016年 郭立源. All rights reserved.
//

#import "PushViewController.h"
#import "Push1ViewController.h"


@interface PushViewController ()

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    UIGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(miss)];
    [self.view addGestureRecognizer:gesture];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor blueColor];
    btn.frame = CGRectMake(100, 100, 50, 40);
    [btn addTarget:self action:@selector(pushto) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    
}

- (void)pushto {

//    Push1ViewController *vc = [Push1ViewController new];
////    [self presentViewController:vc animated:YES completion:nil];
//    [self.navigationController pushViewController:vc animated:YES];
//    vc.dismissed = ^ {
//    
//        [self dismissViewControllerAnimated:YES completion:^{
//            
//        }];
//    };
    

}

- (void)miss {
    
    [self dismissViewControllerAnimated:YES completion:^{
        [self.presentingViewController presentViewController:[Push1ViewController new] animated:YES completion:nil];
    }];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"123" object:@"aaa" userInfo:nil];
        
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
