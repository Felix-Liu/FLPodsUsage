//
//  FLNetworkViewController.m
//  FLPodsUsage
//
//  Created by Felix on 16/7/20.
//  Copyright © 2016年 Felix-Liu. All rights reserved.
//

#import "FLNetworkViewController.h"
#import "UIViewController+AKTabBarController.h"

@interface FLNetworkViewController ()

@end

@implementation FLNetworkViewController

- (NSString *)tabImageName {
    return @"tabbar_icons_1";
}

- (NSString *)tabTitle {
    return @"Network";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Network";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
