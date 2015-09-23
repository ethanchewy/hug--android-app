//
//  LogInViewController.m
//  Hug?
//
//  Created by Sam Daitzman on 11/8/14.
//  Copyright (c) 2014 CodeDay Boston Hug?. All rights reserved.
//

#import "LogInViewController.h"
#import <Parse/Parse.h>
#import <FacebookSDK/FacebookSDK.h>
#import <GoogleMaps/GoogleMaps.h>
#import "StoreKit/StoreKit.h"

@interface LogInViewController ()


@end

@implementation LogInViewController



- (void)viewDidLoad {
    [super viewDidLoad];
	
// unnamed person should not have done this but we're leaving it in case we need it
	// if things don't work put this back in
//    // Do any additional setup after loading the view.
//	PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
//	testObject[@"foo"] = @"bar";
//	[testObject saveInBackground];
//	FBLoginView *loginView = [[FBLoginView alloc] init];
//	loginView.center = self.view.center;
//	[self.view addSubview:loginView];
	
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
