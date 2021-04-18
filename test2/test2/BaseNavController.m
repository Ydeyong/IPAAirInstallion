//
//  BaseNavController.m
//  test2
//
//  Created by ydy on 2020/2/17.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "BaseNavController.h"

@interface BaseNavController ()

@end

@implementation BaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.greenColor;
    self.interactivePopGestureRecognizer.delegate = self;
}

//- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController
//                    animated:(BOOL)animate
//{
//
////    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
//        if ([self.viewControllers indexOfObject:viewController] == 0) {
//            self.interactivePopGestureRecognizer.enabled = NO;
//        }
//        else {
//            self.interactivePopGestureRecognizer.enabled = YES;
//        }
////    }
//}


@end
