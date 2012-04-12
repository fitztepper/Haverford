//
//  FirstViewController.h
//  Haverford
//
//  Created by Fitz Tepper on 1/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController {
    
    IBOutlet UILabel *currentdate;
    IBOutlet UILabel *letterday;
    IBOutlet UIImageView *rotationday;
    IBOutlet UIView *borders;
    IBOutlet UIImageView *classtimes;
}

@property (nonatomic, strong) UIWebView *webview;


@end
