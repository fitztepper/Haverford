//
//  FirstViewController.h
//  Haverford
//
//  Created by Fitz Tepper on 1/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestFlight.h"

@interface FirstViewController : UIViewController {
    
    IBOutlet UILabel *currentdate;
    IBOutlet UILabel *currenttime;
    IBOutlet UILabel *currentday;
    IBOutlet UILabel *letterday;

    IBOutlet UIImageView *image;
    IBOutlet UIWebView *webview;
}

@property (nonatomic, retain) UIWebView *webview;


@end
