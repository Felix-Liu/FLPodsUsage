//
//  AppDelegate.m
//  FLPodsUsage
//
//  Created by Felix on 16/7/19.
//  Copyright © 2016年 Felix-Liu. All rights reserved.
//

#import "AppDelegate.h"
#import "FLTabBarController.h"
#import "FLNetworkNavigationController.h"
#import "FLNetworkViewController.h"

static const CGFloat kTabBarHeight = 49.0f;

NS_ASSUME_NONNULL_BEGIN

@interface AppDelegate ()

@property (nonatomic, strong, nonnull) FLTabBarController *mainTabBarController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(nullable NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window.rootViewController = self.mainTabBarController;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (FLTabBarController *)mainTabBarController {
    if (_mainTabBarController == nil) {
        _mainTabBarController = [[FLTabBarController alloc] initWithTabBarHeight:kTabBarHeight];
        FLNetworkViewController *networkViewController = [[FLNetworkViewController alloc] init];
        FLNetworkNavigationController *networkNavigationController = [[FLNetworkNavigationController alloc] initWithRootViewController:networkViewController];
        _mainTabBarController.viewControllers = [@[networkNavigationController] mutableCopy];
    }
    return _mainTabBarController;
}

- (UIWindow *)window {
    if (_window == nil) {
        _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        [_window makeKeyAndVisible];
    }
    return _window;
}

@end

NS_ASSUME_NONNULL_END
