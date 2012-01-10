//
//  FirstViewController.m
//  Haverford
//
//  Created by Fitz Tepper on 1/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController
@synthesize webview;


-(IBAction)launchFeedback:(UIButton *)sender 
{
    [TestFlight openFeedbackView];
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Home", @"Home");
        self.tabBarItem.image = [UIImage imageNamed:@"home"];
    }
    return self;
    
    //to refresh the dates when each view loads
    
}
							
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
   

    
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"cork.jpg"]];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    


    //get the date today
    
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"cccc, MMMM dd"];
    
    NSString *dateToday = [dateformatter stringFromDate:[NSDate date]];
 
    [currentdate setText:dateToday];
    
    
    //get the time today
    
    NSDateFormatter *timeformatter = [[NSDateFormatter alloc] init];
    [timeformatter setDateFormat:@"hh:mm a"];

    NSString *timeToday = [timeformatter stringFromDate:[NSDate date]];
    
    [currenttime setText:timeToday];
    
    //get the day of week
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSWeekdayCalendarUnit fromDate:[NSDate date]];
    NSInteger weekday   = [components weekday];
    NSString *urlString;
    switch(weekday){
        case 1: // sunday
            urlString = @"http://google.com";
            break;
        case 2:
            urlString = @"http://twitter.com";
            break;
        case 3:
            urlString = @"http://facebook.com";
            break;
        case 4:
            urlString = @"http://yahoo.com";
            break;
        case 5:
            urlString = @"http://mashable.com";
            break;
        case 6:
            urlString = @"http://bbc.co.uk";
            break;
        case 7: // saturday
            urlString = @"http://stackoverflow.com";
            break;
        default:
            urlString = @"http://google.com?q=weekday+is+never+this!";
            break;
    }
    
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [webview loadRequest:requestObj];
    
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
