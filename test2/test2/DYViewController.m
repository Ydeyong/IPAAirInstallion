//
//  DYViewController.m
//  test2
//
//  Created by ydy on 2020/2/17.
//  Copyright © 2020 ydy. All rights reserved.
//

#import "DYViewController.h"

@interface DYViewController ()

@end

@implementation DYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.redColor;
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"aa" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
}


- (void)back{
    [self.navigationController popViewControllerAnimated:true];
    
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
