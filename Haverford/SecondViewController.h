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
    IBOutlet UIScrollView* scrollView;
	IBOutlet UIPageControl* pageControl;
	
    BOOL pageControlIsChangingPage;



    
}
@property (nonatomic, strong) UIView *scrollView;
@property (nonatomic, strong) UIPageControl* pageControl;
@property (nonatomic, strong) UIWebView *webview;

/* for pageControl */
- (IBAction)changePage:(id)sender;

/* internal */
- (void)setupPage;


@end
