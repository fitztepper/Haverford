//
//  FirstViewController.m
//  Haverford
//
//  Created by Fitz Tepper on 1/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "TestFlight.h"

@implementation FirstViewController
@synthesize webview;




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Home", @"Home");
        self.tabBarItem.image = [UIImage imageNamed:@"home"];
        

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
    
    [[image layer] setCornerRadius:5];
    [image setClipsToBounds:YES];
    
     //Create colored border using CALayer property 
   [[image layer] setBorderColor:
     [[UIColor colorWithRed:0 green:0. blue:0 alpha:1] CGColor]];
     [[UIColor colorWithWhite:1 alpha:1] CGColor];
    [[image layer] setBorderWidth:2.75];
    
    [[self view] addSubview:image];

    
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"chalk.jpg"]];

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

    [super viewDidAppear:animated];
    
    //get the day of week
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSWeekdayCalendarUnit fromDate:[NSDate date]];
    NSInteger weekday   = [components weekday];
    switch(weekday){
        case 1: // sunday
            image.image = [UIImage imageNamed:@"Monday.jpg"];
            break;
        case 2: // monday
            image.image = [UIImage imageNamed:@"Monday.jpg"];
            
            break;
        case 3: //tuesday
            image.image = [UIImage imageNamed:@"Tuesday.jpg"];
            break;
        case 4: //wednesday
            image.image = [UIImage imageNamed:@"Wednesday.jpg"];
            break;
        case 5: //thursday
            image.image = [UIImage imageNamed:@"Monday.jpg"];
            break;
        case 6: // friday
            image.image = [UIImage imageNamed:@"Tuesday.jpg"];
            break;
        case 7: // saturday
            image.image = [UIImage imageNamed:@"Monday.jpg"];
            break;
            
            }
      
    NSDateFormatter *dayformatter = [[NSDateFormatter alloc] init];
    [dayformatter setDateFormat:@"yyyy-MM-dd"];
    NSString *LetterDay = [dayformatter stringFromDate:[NSDate date]];

    
    
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    [dictionary setObject:@"A Day" forKey:@"2012-01-11"];
    [dictionary setObject:@"B Day" forKey:@"2012-01-12"];
    [dictionary setObject:@"C Day" forKey:@"2012-01-13"];
    
    [dictionary setObject:@"MLK DAY" forKey:@"2012-01-16"];
    [dictionary setObject:@"D Day" forKey:@"2012-01-17"];
    [dictionary setObject:@"E Day" forKey:@"2012-01-18"];
    [dictionary setObject:@"F Day" forKey:@"2012-01-19"];
    [dictionary setObject:@"G Day" forKey:@"2012-01-20"];
    [dictionary setObject:@"X Day" forKey:@"2012-01-23"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-01-24"];
    [dictionary setObject:@"B Day" forKey:@"2012-01-25"];
    [dictionary setObject:@"C Day" forKey:@"2012-01-26"];
    [dictionary setObject:@"D Day" forKey:@"2012-01-27"];
    [dictionary setObject:@"E Day" forKey:@"2012-01-30"];
    [dictionary setObject:@"F Day" forKey:@"2012-01-31"];
    [dictionary setObject:@"G Day" forKey:@"2012-02-01"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-02-02"];
    [dictionary setObject:@"B Day" forKey:@"2012-02-03"];
    [dictionary setObject:@"C Day" forKey:@"2012-02-06"];
    [dictionary setObject:@"D Day" forKey:@"2012-02-07"];
    [dictionary setObject:@"E Day" forKey:@"2012-02-08"];
    [dictionary setObject:@"F Day" forKey:@"2012-02-09"];
    [dictionary setObject:@"G Day" forKey:@"2012-02-10"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-02-13"];
    [dictionary setObject:@"B Day" forKey:@"2012-02-14"];
    [dictionary setObject:@"C Day" forKey:@"2012-02-15"];
    [dictionary setObject:@"D Day" forKey:@"2012-02-16"];
    [dictionary setObject:@"No School" forKey:@"2012-02-17"];
    [dictionary setObject:@"No School" forKey:@"2012-02-20"];
    [dictionary setObject:@"E Day" forKey:@"2012-02-21"];
    [dictionary setObject:@"F Day" forKey:@"2012-02-22"];
    [dictionary setObject:@"G Day" forKey:@"2012-02-23"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-02-24"];
    [dictionary setObject:@"B Day" forKey:@"2012-02-27"];
    [dictionary setObject:@"C Day" forKey:@"2012-02-28"];
    [dictionary setObject:@"D Day" forKey:@"2012-02-29"];
    [dictionary setObject:@"E Day" forKey:@"2012-03-01"];
    [dictionary setObject:@"F Day" forKey:@"2012-03-02"];
    [dictionary setObject:@"G Day" forKey:@"2012-03-05"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-03-06"];
    [dictionary setObject:@"B Day" forKey:@"2012-03-07"];
    [dictionary setObject:@"C Day" forKey:@"2012-03-08"];
    [dictionary setObject:@"D Day" forKey:@"2012-03-09"];
    [dictionary setObject:@"E Day" forKey:@"2012-03-12"];
    [dictionary setObject:@"F Day" forKey:@"2012-03-13"];
    [dictionary setObject:@"G Day" forKey:@"2012-03-14"];

    [dictionary setObject:@"A Day" forKey:@"2012-03-15"];
    [dictionary setObject:@"Conferences" forKey:@"2012-03-16"];
    [dictionary setObject:@"B Day" forKey:@"2012-03-19"];
    [dictionary setObject:@"C Day" forKey:@"2012-03-20"];
    [dictionary setObject:@"D Day" forKey:@"2012-03-21"];
    [dictionary setObject:@"E Day" forKey:@"2012-03-22"];
    [dictionary setObject:@"Spring Break" forKey:@"2012-03-23"];
    [dictionary setObject:@"Spring Break" forKey:@"2012-03-26"];
    [dictionary setObject:@"Spring Break" forKey:@"2012-03-27"];
    [dictionary setObject:@"Spring Break" forKey:@"2012-03-28"];
    [dictionary setObject:@"Spring Break" forKey:@"2012-03-29"];
    [dictionary setObject:@"Spring Break" forKey:@"2012-03-30"];
    [dictionary setObject:@"F Day" forKey:@"2012-04-02"];
    [dictionary setObject:@"G Day" forKey:@"2012-04-03"];

    [dictionary setObject:@"A Day" forKey:@"2012-04-04"];
    [dictionary setObject:@"B Day" forKey:@"2012-04-05"];
    [dictionary setObject:@"Good Friday" forKey:@"2012-04-06"];
    [dictionary setObject:@"C Day" forKey:@"2012-04-09"];
    [dictionary setObject:@"D Day" forKey:@"2012-04-10"];
    [dictionary setObject:@"E Day" forKey:@"2012-04-11"];
    [dictionary setObject:@"F Day" forKey:@"2012-04-12"];
    [dictionary setObject:@"G Day" forKey:@"2012-04-13"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-04-16"];
    [dictionary setObject:@"B Day" forKey:@"2012-04-17"];
    [dictionary setObject:@"C Day" forKey:@"2012-04-18"];
    [dictionary setObject:@"D Day" forKey:@"2012-04-19"];
    [dictionary setObject:@"E Day" forKey:@"2012-04-20"];
    [dictionary setObject:@"F Day" forKey:@"2012-04-23"];
    [dictionary setObject:@"G Day" forKey:@"2012-04-24"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-04-25"];
    [dictionary setObject:@"B Day" forKey:@"2012-04-26"];
    [dictionary setObject:@"C Day" forKey:@"2012-04-27"];
    [dictionary setObject:@"D Day" forKey:@"2012-04-30"];
    [dictionary setObject:@"E Day" forKey:@"2012-05-01"];
    [dictionary setObject:@"F Day" forKey:@"2012-05-02"];
    [dictionary setObject:@"G Day" forKey:@"2012-05-03"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-05-04"];
    [dictionary setObject:@"B Day" forKey:@"2012-05-07"];
    [dictionary setObject:@"C Day" forKey:@"2012-05-08"];
    [dictionary setObject:@"D Day" forKey:@"2012-05-09"];
    [dictionary setObject:@"E Day" forKey:@"2012-05-10"];
    [dictionary setObject:@"F Day" forKey:@"2012-05-11"];
    [dictionary setObject:@"G Day" forKey:@"2012-05-14"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-05-15"];
    [dictionary setObject:@"B Day" forKey:@"2012-05-16"];
    [dictionary setObject:@"C Day" forKey:@"2012-05-17"];
    [dictionary setObject:@"D Day" forKey:@"2012-05-18"];
    [dictionary setObject:@"E Day" forKey:@"2012-05-21"];
    [dictionary setObject:@"F Day" forKey:@"2012-05-22"];
    [dictionary setObject:@"G Day" forKey:@"2012-05-23"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-05-24"];
    [dictionary setObject:@"B Day" forKey:@"2012-05-25"];
    [dictionary setObject:@"Memorial Day" forKey:@"2012-05-28"];
    [dictionary setObject:@"X Day" forKey:@"2012-05-29"];
    [dictionary setObject:@"X Day" forKey:@"2012-05-30"];
    [dictionary setObject:@"Final Exams" forKey:@"2012-05-31"];
    [dictionary setObject:@"Final Exams" forKey:@"2012-06-01"];
    [dictionary setObject:@"Final Exams" forKey:@"2012-06-04"];
    [dictionary setObject:@"Final Exams" forKey:@"2012-06-05"];
    [dictionary setObject:@"Grading Day" forKey:@"2012-06-06"];
    [dictionary setObject:@"Honors Day" forKey:@"2012-06-07"];
    [dictionary setObject:@"Commencement" forKey:@"2012-06-08"];



    
    
    //[letterday setText:LetterDay];
    [letterday setText:[dictionary objectForKey:LetterDay]];

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
