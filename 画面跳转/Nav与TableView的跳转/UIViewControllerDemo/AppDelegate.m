//
//  AppDelegate.m
//  UIViewControllerDemo
//
//  Created by chuguangming on 14-8-4.
//  Copyright (c) 2014年 chu. All rights reserved.
//

#import "AppDelegate.h"
#import "MyViewController1.h"
#import "MyViewController2.h"
#import "TopMenuController.h"
@implementation AppDelegate
@synthesize viewController1,viewController2,rootController;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];

    //viewController1=[[MyViewController1 alloc] init];
    //viewController2=[[MyViewController2 alloc ] init];
    
    /*
    //[self.window addSubview:viewController1.view];
    //[self.window addSubview:viewController2.view];
    //[self.window bringSubviewToFront:viewController1.view];
    //self.window.rootViewController=viewController1;
     */
    /*
    rootController=[[UITabBarController alloc] init];
    NSArray *tabs=[NSArray arrayWithObjects:viewController1,viewController2,nil];
    [rootController setViewControllers:tabs animated:YES];
    self.window.rootViewController=rootController;
    */
    TopMenuController *topMenu=[[TopMenuController alloc] initWithStyle:UITableViewStylePlain];
    rootController=[[UINavigationController alloc] initWithRootViewController:topMenu];
    self.window.rootViewController=rootController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
