//
//  BURIEDPOINTAppDelegate.m
//  BuriedPointSDK
//
//  Created by kaige1123 on 08/02/2020.
//  Copyright (c) 2020 kaige1123. All rights reserved.
//

#import "BURIEDPOINTAppDelegate.h"
#import <BuriedPointSDK/SensorsAnalyticsSDK.h>

static NSString* Sa_Default_ServerURL = @"http://sdk-test.cloud.sensorsdata.cn:8006/sa?project=default&token=95c73ae661f85aa0";

@implementation BURIEDPOINTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:Sa_Default_ServerURL launchOptions:launchOptions];
    options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;
    options.enableTrackAppCrash = YES;
    options.flushInterval = 10 * 1000;
    options.flushBulkSize = 20;
//    options.enableHeatMap = YES;
//    options.enableVisualizedAutoTrack = YES;
//    options.enableJavaScriptBridge = YES;
//    options.enableLog = YES;
    options.maxCacheSize = 20000;
    [SensorsAnalyticsSDK startWithConfigOptions:options];

    [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:@{@"AAA":UIDevice.currentDevice.identifierForVendor.UUIDString}];
    [[SensorsAnalyticsSDK sharedInstance] registerDynamicSuperProperties:^NSDictionary * _Nonnull{
        __block UIApplicationState appState;
        if (NSThread.isMainThread) {
            appState = UIApplication.sharedApplication.applicationState;
        }else {
            dispatch_sync(dispatch_get_main_queue(), ^{
                appState = UIApplication.sharedApplication.applicationState;
            });
        }
        return @{@"__APPState__":@(appState)};
    }];
    [[SensorsAnalyticsSDK sharedInstance] enableLog:YES];
    [[SensorsAnalyticsSDK sharedInstance] trackInstallation:@"AppInstall" withProperties:@{@"testValue" : @"testKey"}];
    //[[SensorsAnalyticsSDK sharedInstance] addHeatMapViewControllers:[NSArray arrayWithObject:@"DemoController"]];

    [[SensorsAnalyticsSDK sharedInstance] setFlushNetworkPolicy:SensorsAnalyticsNetworkTypeALL];
    [[SensorsAnalyticsSDK sharedInstance] enableTrackScreenOrientation:YES];
    [[SensorsAnalyticsSDK sharedInstance] enableTrackGPSLocation:YES];
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
