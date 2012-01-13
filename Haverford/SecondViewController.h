//
//  SecondViewController.h
//  Haverford
//
//  Created by Fitz Tepper on 1/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestFlight.h"

@interface SecondViewController : UIViewController{
    IBOutlet UIWebView *webview;
    
    
}

@property (nonatomic, retain) UIWebView *webview;
@property(nonatomic, readonly, retain) UIScrollView *scrollView;

@end
