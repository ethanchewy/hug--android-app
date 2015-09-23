//
//  AppDelegate.m
//  Hug?
//
//  Created by Sam Daitzman on 11/8/14.
//  Copyright (c) 2014 CodeDay Boston Hug?. All rights reserved.
//

#import "AppDelegate.h"
#import <Parse/Parse.h>
#import <FacebookSDK/FacebookSDK.h>
#import <ParseFacebookUtils/PFFacebookUtils.h>
#import <GoogleMaps/GoogleMaps.h>

#import "StoreKit/StoreKit.h"
#import <QuartzCore/QuartzCore.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// Override point for customization after application launch.
	[Parse setApplicationId:@"SlXUVdJulyXOJ7Y37Th4kxIPLXpjN6zayEuoxB1D"
				  clientKey:@"QbwzHSTsMjMxSLlywY8Hnn3d2lpkpc9dj2sNIptC"];
	[PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
	[PFFacebookUtils initializeFacebook];
	[GMSServices provideAPIKey:@"AIzaSyCb_ixxJWlY4hC6nVtTk2aKHe1wHoseUuM"];
	NSArray *permissions = [NSArray arrayWithObjects:(@"email", @"public_profile"), nil];
	[Parse setApplicationId:@"SlXUVdJulyXOJ7Y37Th4kxIPLXpjN6zayEuoxB1D" clientKey:@"QbwzHSTsMjMxSLlywY8Hnn3d2lpkpc9dj2sNIptC"];
	[PFFacebookUtils logInWithPermissions:permissions block:^(PFUser *user, NSError *error) {
		if (!user) {
			NSLog(@"Uh oh. The user cancelled the Facebook login.");
		} else if (user.isNew) {
			NSLog(@"User signed up and logged in through Facebook!");
		} else {
			NSLog(@"User logged in through Facebook!");
		}
	}];
	return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
	// Sent when the application is about to move from active to inactive state. This 3can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
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
	[FBAppCall handleDidBecomeActiveWithSession:[PFFacebookUtils session]];
	[FBAppEvents activateApp];
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL)application:(UIApplication *)application // I am not sure why this works but it does #fuckitshipit
			openURL:(NSURL *)url
	sourceApplication:(NSString *)sourceApplication
			annotation:(id)annotation {
	return [FBAppCall handleOpenURL:url
				  sourceApplication:sourceApplication
						withSession:[PFFacebookUtils session]];
}

@end
