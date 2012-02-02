//
//  SecondViewController.h
//  Haverford
//
//  Created by Fitz Tepper on 1/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestFlight.h"

@interface SecondViewController : UIViewController <UIScrollViewDelegate> {
    IBOutlet UIWebView *webview;
    UIScrollView* scrollView;
	UIPageControl* pageControl;
    
    BOOL pageControlBeingUsed;

    
}

@property (nonatomic, retain) UIWebView *webview;
@property (nonatomic, retain) IBOutlet UIScrollView* scrollView;
@property (nonatomic, retain) IBOutlet UIPageControl* pageControl;


@end
