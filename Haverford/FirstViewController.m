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
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(myMethod) name:@"refreshDateCheck" object:nil];
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
    
    
}

-(void)myMethod{

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
    
    NSDateFormatter *dayofweekformatter = [[NSDateFormatter alloc] init];
    [dayofweekformatter setDateFormat:@"cccc"];
    
    NSString *DayOfWeek = [dayofweekformatter stringFromDate:[NSDate date]];
    
    
    NSString *Monday = @"Monday";
    NSString *Tuesday = @"Tuesday";
    NSString *Wednesday = @"Wednesday";
    NSString *Thursday = @"Thursday";
    NSString *Friday = @"Friday";
    NSString *Saturday = @"Saturday";
    NSString *Sunday = @"Sunday";



    if ([DayOfWeek isEqualToString:Monday])
    
    { // Webview code
        
        NSString *urlAddress = @"http://www.google.com";
        
        //Create a URL object.
        NSURL *url = [NSURL URLWithString:urlAddress];
        
        //URL Requst Object
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        
        //Load the request in the UIWebView.
        [webview loadRequest:requestObj];


    }
    
    else if ([DayOfWeek isEqualToString:Tuesday])

        
    { // Webview code
        
        NSString *urlAddress = @"http://www.cnn.com";
        
        //Create a URL object.
        NSURL *url = [NSURL URLWithString:urlAddress];
        
        //URL Requst Object
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        
        //Load the request in the UIWebView.
        [webview loadRequest:requestObj];


    }
    else if ([DayOfWeek isEqualToString:Wednesday])

        
    {// Webview code
        
        NSString *urlAddress = @"http://www.reddit.com";
        
        //Create a URL object.
        NSURL *url = [NSURL URLWithString:urlAddress];
        
        //URL Requst Object
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        
        //Load the request in the UIWebView.
        [webview loadRequest:requestObj];
      
        
    } 
    
    else if ([DayOfWeek isEqualToString:Thursday])

        
    {// Webview code
        
        NSString *urlAddress = @"http://www.foxnews.com";
        
        //Create a URL object.
        NSURL *url = [NSURL URLWithString:urlAddress];
        
        //URL Requst Object
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        
        //Load the request in the UIWebView.
        [webview loadRequest:requestObj];
        
    } 
    else if ([DayOfWeek isEqualToString:Friday])

        
    {// Webview code
        
        NSString *urlAddress = @"http://www.techcrunch.com";
        
        //Create a URL object.
        NSURL *url = [NSURL URLWithString:urlAddress];
        
        //URL Requst Object
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        
        //Load the request in the UIWebView.
        [webview loadRequest:requestObj];
        
    }
    else if ([DayOfWeek isEqualToString:Saturday])

        
    {// Webview code
        
        NSString *urlAddress = @"http://www.aol.com";
        
        //Create a URL object.
        NSURL *url = [NSURL URLWithString:urlAddress];
        
        //URL Requst Object
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        
        //Load the request in the UIWebView.
        [webview loadRequest:requestObj];
        
    } 
    else if ([DayOfWeek isEqualToString:Sunday])
        
    {// Webview code
        
        NSString *urlAddress = @"http://www.yahoo.com";
        
        //Create a URL object.
        NSURL *url = [NSURL URLWithString:urlAddress];
        
        //URL Requst Object
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        
        //Load the request in the UIWebView.
        [webview loadRequest:requestObj];
        
    }
    

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
