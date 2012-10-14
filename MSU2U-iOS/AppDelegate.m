//
//  AppDelegate.m
//  MSU2U-iOS
//
//  Created by Matthew Farmer on 10/14/12.
//  Copyright (c) 2012 Matthew Farmer. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    // Create image for navigation background - portrait
    UIImage *NavigationPortraitBackground = [[UIImage imageNamed:@"navigationBar.png"]
                                             resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    
    // Set the background image for all UINavigationBars
    [[UINavigationBar appearance] setBackgroundImage:NavigationPortraitBackground
                                       forBarMetrics:UIBarMetricsDefault];
    
    // Set the text appearance for navbar
    [[UINavigationBar appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor whiteColor], UITextAttributeTextColor,
      [UIColor redColor], UITextAttributeTextShadowColor,
      [NSValue valueWithUIOffset:UIOffsetMake(0, 0)], UITextAttributeTextShadowOffset,
      [UIFont fontWithName:@"Verdana-Pro" size:16], UITextAttributeFont,
      nil]];
    
    //Make the back buttons on the navigation bar red as well.
    [[UIBarButtonItem appearance] setTintColor:[UIColor colorWithRed:(55.0/255.0) green:(7.0/255.0) blue:(16.0/255.0) alpha:1]];
    
    //Set the search bars to be a gold color
    [[UISearchBar appearance] setTintColor:[UIColor colorWithRed:(185.0/255.0) green:(142.0/255.0) blue:(47.0/255.0) alpha:1]];

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
