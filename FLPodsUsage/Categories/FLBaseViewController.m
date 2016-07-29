//
//  FLBaseViewController.m
//  FLPodsUsage
//
//  Created by Felix on 16/7/22.
//  Copyright © 2016年 Felix-Liu. All rights reserved.
//

#import "FLBaseViewController.h"

@interface FLBaseViewController () <UINavigationControllerDelegate>

@end

@implementation FLBaseViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.navigationController.delegate = self;
    }
    return self;
}

@end
