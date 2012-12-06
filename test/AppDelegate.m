//
//  AppDelegate.m
//  test
//
//  Created by Loïc on 03/12/12.
//  Copyright (c) 2012 Loïc. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "HomeViewController.h"
#import "PlanViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Home view
    HomeViewController *homeViewController = [[HomeViewController alloc] init];
    UINavigationController *homeNavController = [[UINavigationController alloc] initWithRootViewController:homeViewController];
    [homeNavController.navigationBar setTintColor:[UIColor colorWithRed:(137/255.f) green:(168/255.f) blue:(4/255.f) alpha:1]];
    
    // info button for home view
    UIButton *helpButtonHome = [UIButton buttonWithType:UIButtonTypeCustom];
    [helpButtonHome setImage:[UIImage imageNamed:@"help"] forState:UIControlStateNormal];
    [helpButtonHome setImage:[UIImage imageNamed:@"help_on"] forState:UIControlStateHighlighted];
    [helpButtonHome setFrame:CGRectMake(0, 0, 35, 31)];
    [helpButtonHome addTarget:self action:@selector(infoView) forControlEvents:UIControlEventTouchUpInside];
	UIBarButtonItem *modalButtonHome = [[UIBarButtonItem alloc] initWithCustomView:helpButtonHome];
	[homeViewController.navigationItem setRightBarButtonItem:modalButtonHome animated:YES];
    
    // Map view
    PlanViewController *planViewController = [[PlanViewController alloc] init];
    UINavigationController *planNavController = [[UINavigationController alloc] initWithRootViewController:planViewController];
    [planNavController.navigationBar setTintColor:[UIColor colorWithRed:(137/255.f) green:(168/255.f) blue:(4/255.f) alpha:1]];
    
    // info button for map view
    UIButton *helpButtonMap = [UIButton buttonWithType:UIButtonTypeCustom];
    [helpButtonMap setImage:[UIImage imageNamed:@"help"] forState:UIControlStateNormal];
    [helpButtonMap setImage:[UIImage imageNamed:@"help_on"] forState:UIControlStateHighlighted];
    [helpButtonMap setFrame:CGRectMake(0, 0, 35, 31)];
    [helpButtonMap addTarget:self action:@selector(infoView) forControlEvents:UIControlEventTouchUpInside];
	UIBarButtonItem *modalButtonMap = [[UIBarButtonItem alloc] initWithCustomView:helpButtonMap];
	[planViewController.navigationItem setRightBarButtonItem:modalButtonMap animated:YES];
    
    // set the statusbar to a black background
    [[UIApplication sharedApplication]
     setStatusBarStyle:UIStatusBarStyleBlackOpaque animated:NO];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UITabBarController *tabController = [[UITabBarController alloc] init];
    [tabController setViewControllers:@[homeNavController, planNavController] animated:YES];
    
    self.window.rootViewController = tabController;
    [self.window makeKeyAndVisible];
    return YES;
}

-(IBAction)infoView
{
    NSLog(@"OKDSFOKOFKER");
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
