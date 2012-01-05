//
//  SecondViewController.m
//  Haverford
//
//  Created by Fitz Tepper on 1/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ThirdViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation ThirdViewController
@synthesize webview;


-(IBAction)linkPressed:(UIButton *)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.haverford.org/campus-life/dining-services/index.aspx"]];
}

- (id)initWithNibName
:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Lunch", @"Lunch");
        self.tabBarItem.image = [UIImage imageNamed:@"menu"];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
// Round corners using CALayer property

[[webview layer] setCornerRadius:10];
[webview setClipsToBounds:YES];

// Create colored border using CALayer property 
[[webview layer] setBorderColor:
 [[UIColor colorWithRed:0.52 green:0.09 blue:0.07 alpha:1] CGColor]];
// [[UIColor colorWithWhite:1 alpha:1] CGColor]];
[[webview layer] setBorderWidth:2.75];

[[self view] addSubview:webview];

self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"cork.jpg"]];

// Webview code
    

NSString *urlAddress = @"http://www.fitztepper.com/lunchsched.jpg";

//Create a URL object.
NSURL *url = [NSURL URLWithString:urlAddress];

//URL Requst Object
NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];

//Load the request in the UIWebView.
[webview loadRequest:requestObj];



[super viewDidLoad];
// Do any additional setup after loading the view, typically from a nib.

}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
