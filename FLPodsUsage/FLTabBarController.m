//
//  FLTabBarController.m
//  FLPodsUsage
//
//  Created by Felix on 16/7/20.
//  Copyright © 2016年 Felix-Liu. All rights reserved.
//

#import "FLTabBarController.h"
#import "FLNetworkNavigationController.h"
#import "FLNetworkViewController.h"

@interface FLTabBarController ()

@end

@implementation FLTabBarController

- (instancetype)initWithTabBarHeight:(NSUInteger)height
{
    self = [super initWithTabBarHeight:height];
    if (self) {
        FLNetworkViewController *networkViewController = [[FLNetworkViewController alloc] init];
        FLNetworkNavigationController *networkNavigationController = [[FLNetworkNavigationController alloc] initWithRootViewController:networkViewController];
        self.viewControllers = [@[networkNavigationController] mutableCopy];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
