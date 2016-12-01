//
//  Push1ViewController.h
//  TTSingleView_OC
//
//  Created by 郭立源 on 2016/11/15.
//  Copyright © 2016年 郭立源. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PushViewController.h"


@interface Push1ViewController : UIViewController

@property (nonatomic, weak)Push1ViewController *parent;


@property (nonatomic, copy) void (^dismissed)();


//- (void)dismissed:(void (^) ())dismis;


@end
