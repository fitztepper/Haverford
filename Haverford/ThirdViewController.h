//
//  ThirdViewController.h
//  Haverford
//
//  Created by Fitz Tepper on 1/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ThirdViewController : UIViewController{
    
    IBOutlet UIWebView *webview;
     IBOutlet UIButton *usLunch;
     IBOutlet UIButton *lsLunch;
}

- (void)showLowerSchoolLunchMenu;
- (void)showUpperSchoolLunchMenu;

- (IBAction)didChangeSegmentedControlValue:(UISegmentedControl *)segmentedControl;

@property (nonatomic, strong) UIWebView *webview;

@end
