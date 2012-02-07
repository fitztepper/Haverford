//
//  AppDelegate.h
//  Haverford
//
//  Created by Fitz Tepper on 1/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "TestFlight.h"
#import <QuartzCore/QuartzCore.h>


@interface AppDelegate : UIResponder  <UIApplicationDelegate, UITabBarControllerDelegate> {
    
    UINavigationController *navigationController;
    UIWindow *window2;
    UIWindow *window;


}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) UIWindow *window2;
@property (nonatomic, strong) IBOutlet UINavigationController *navigationController;
@property (strong, nonatomic) UITabBarController *tabBarController;

@end
