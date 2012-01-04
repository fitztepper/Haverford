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
    
    
}
-(IBAction)linkPressed:(UIButton *)sender;

@property (nonatomic, retain) UIWebView *webview;

@end
