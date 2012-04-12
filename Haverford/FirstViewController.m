//
//  FirstViewController.m
//  Haverford
//
//  Created by Fitz Tepper on 1/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation FirstViewController
@synthesize webview;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"US", @"US");
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
    
    [[borders layer] setCornerRadius:5];
    [borders setClipsToBounds:YES];
    
     //Create colored border using CALayer property 
   [[borders layer] setBorderColor:
     [[UIColor colorWithRed:0 green:0. blue:0 alpha:1] CGColor]];
     [[UIColor colorWithWhite:1 alpha:1] CGColor];
    [[borders layer] setBorderWidth:2.75];
    
    [[self view] addSubview:borders];
    
    
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"paper.jpg"]];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    /*
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(becomeActive:)
                                                 name:UIApplicationDidBecomeActiveNotification
                                               object:nil];
     */
    
    
}
/*
///WHAT DOES THIS DO????????
-(void)becomeActive:(NSNotification *)notification {
    // only respond if the selected tab is our current tab
    if (self.tabBarController.selectedIndex == 0) { // Tab 1 is 0 index, Tab 2 is 1, etc 
        [self viewDidAppear:YES];
    }
    
    
}
*/

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
    NSLog(@"View did appear: %@.", self.class);
    [TestFlight passCheckpoint:@"Home Page"];

    
    //get the date today
    
    
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
        [dateformatter setDateFormat:@"cccc, MMMM dd"];
    
    NSString *dateToday = [dateformatter stringFromDate:[NSDate date]];
    
    [currentdate setText:dateToday];
    
    
    //get the time today
    //NSDateFormatter *timeformatter = [[NSDateFormatter alloc] init];
    //[timeformatter setDateFormat:@"hh:mm a"];
    
    //NSString *timeToday = [timeformatter stringFromDate:[NSDate date]];
    
   // [currenttime setText:timeToday];

    //[super viewDidAppear:animated];
    
    //get the day of week
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSWeekdayCalendarUnit fromDate:[NSDate date]];
    NSInteger weekday   = [components weekday];
    switch(weekday){
        case 1: // sunday
            classtimes.image = [UIImage imageNamed:@"Monday.png"];
            break;
        case 2: // monday
            classtimes.image = [UIImage imageNamed:@"Monday.png"];
            
            break;
        case 3: //tuesday
            classtimes.image = [UIImage imageNamed:@"Tuesday.png"];
            break;
        case 4: //wednesday
            classtimes.image = [UIImage imageNamed:@"Wednesday.png"];
            break;
        case 5: //thursday
            classtimes.image = [UIImage imageNamed:@"Thursday.png"];
            break;
        case 6: // friday
            classtimes.image = [UIImage imageNamed:@"Friday.png"];
            break;
        case 7: // saturday
            classtimes.image = [UIImage imageNamed:@"Monday.png"];
            break;
            
            }
      
    NSDateFormatter *dayformatter = [[NSDateFormatter alloc] init];
    [dayformatter setDateFormat:@"yyyy-MM-dd"];
    NSString *LetterDay = [dayformatter stringFromDate:[NSDate date]];

    
    
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    [dictionary setObject:@"A Day" forKey:@"2012-01-11"];
    [dictionary setObject:@"B Day" forKey:@"2012-01-12"];
    [dictionary setObject:@"C Day" forKey:@"2012-01-13"];
    
    [dictionary setObject:@"D Day" forKey:@"2012-01-16"];
    [dictionary setObject:@"D Day" forKey:@"2012-01-17"];
    [dictionary setObject:@"E Day" forKey:@"2012-01-18"];
    [dictionary setObject:@"F Day" forKey:@"2012-01-19"];
    [dictionary setObject:@"G Day" forKey:@"2012-01-20"];
    [dictionary setObject:@"X Day" forKey:@"2012-01-21"];
    [dictionary setObject:@"X Day" forKey:@"2012-01-22"];
    [dictionary setObject:@"X Day" forKey:@"2012-01-23"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-01-24"];
    [dictionary setObject:@"B Day" forKey:@"2012-01-25"];
    [dictionary setObject:@"C Day" forKey:@"2012-01-26"];
    [dictionary setObject:@"D Day" forKey:@"2012-01-27"];
    [dictionary setObject:@"E Day" forKey:@"2012-01-28"];
    [dictionary setObject:@"E Day" forKey:@"2012-01-29"];
    [dictionary setObject:@"E Day" forKey:@"2012-01-30"];
    [dictionary setObject:@"F Day" forKey:@"2012-01-31"];
    [dictionary setObject:@"G Day" forKey:@"2012-02-01"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-02-02"];
    [dictionary setObject:@"B Day" forKey:@"2012-02-03"];
    [dictionary setObject:@"C Day" forKey:@"2012-02-04"];
    [dictionary setObject:@"C Day" forKey:@"2012-02-05"];
    [dictionary setObject:@"C Day" forKey:@"2012-02-06"];
    [dictionary setObject:@"D Day" forKey:@"2012-02-07"];
    [dictionary setObject:@"E Day" forKey:@"2012-02-08"];
    [dictionary setObject:@"F Day" forKey:@"2012-02-09"];
    [dictionary setObject:@"G Day" forKey:@"2012-02-10"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-02-11"];
    [dictionary setObject:@"A Day" forKey:@"2012-02-12"];
    [dictionary setObject:@"A Day" forKey:@"2012-02-13"];
    [dictionary setObject:@"B Day" forKey:@"2012-02-14"];
    [dictionary setObject:@"C Day" forKey:@"2012-02-15"];
    [dictionary setObject:@"D Day" forKey:@"2012-02-16"];
    [dictionary setObject:@"E Day" forKey:@"2012-02-17"];
    [dictionary setObject:@"E Day" forKey:@"2012-02-18"];
    [dictionary setObject:@"E Day" forKey:@"2012-02-19"];
    [dictionary setObject:@"E Day" forKey:@"2012-02-20"];
    [dictionary setObject:@"E Day" forKey:@"2012-02-21"];
    [dictionary setObject:@"F Day" forKey:@"2012-02-22"];
    [dictionary setObject:@"G Day" forKey:@"2012-02-23"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-02-24"];
    [dictionary setObject:@"B Day" forKey:@"2012-02-25"];
    [dictionary setObject:@"B Day" forKey:@"2012-02-26"];
    [dictionary setObject:@"B Day" forKey:@"2012-02-27"];
    [dictionary setObject:@"C Day" forKey:@"2012-02-28"];
    [dictionary setObject:@"D Day" forKey:@"2012-02-29"];
    [dictionary setObject:@"E Day" forKey:@"2012-03-01"];
    [dictionary setObject:@"F Day" forKey:@"2012-03-02"];
    [dictionary setObject:@"G Day" forKey:@"2012-03-03"];
    [dictionary setObject:@"G Day" forKey:@"2012-03-04"];
    [dictionary setObject:@"G Day" forKey:@"2012-03-05"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-03-06"];
    [dictionary setObject:@"B Day" forKey:@"2012-03-07"];
    [dictionary setObject:@"C Day" forKey:@"2012-03-08"];
    [dictionary setObject:@"D Day" forKey:@"2012-03-09"];
    [dictionary setObject:@"E Day" forKey:@"2012-03-10"];
    [dictionary setObject:@"E Day" forKey:@"2012-03-11"];
    [dictionary setObject:@"E Day" forKey:@"2012-03-12"];
    [dictionary setObject:@"F Day" forKey:@"2012-03-13"];
    [dictionary setObject:@"G Day" forKey:@"2012-03-14"];

    [dictionary setObject:@"A Day" forKey:@"2012-03-15"];
    [dictionary setObject:@"B Day" forKey:@"2012-03-16"];
    [dictionary setObject:@"B Day" forKey:@"2012-03-17"];
    [dictionary setObject:@"B Day" forKey:@"2012-03-18"];
    [dictionary setObject:@"B Day" forKey:@"2012-03-19"];
    [dictionary setObject:@"C Day" forKey:@"2012-03-20"];
    [dictionary setObject:@"D Day" forKey:@"2012-03-21"];
    [dictionary setObject:@"E Day" forKey:@"2012-03-22"];
    [dictionary setObject:@"F Day" forKey:@"2012-03-23"];
    [dictionary setObject:@"F Day" forKey:@"2012-03-26"];
    [dictionary setObject:@"F Day" forKey:@"2012-03-27"];
    [dictionary setObject:@"F Day" forKey:@"2012-03-28"];
    [dictionary setObject:@"F Day" forKey:@"2012-03-29"];
    [dictionary setObject:@"F Day" forKey:@"2012-03-30"];
    [dictionary setObject:@"F Day" forKey:@"2012-04-01"];
    [dictionary setObject:@"F Day" forKey:@"2012-04-02"];
    [dictionary setObject:@"G Day" forKey:@"2012-04-03"];

    [dictionary setObject:@"A Day" forKey:@"2012-04-04"];
    [dictionary setObject:@"B Day" forKey:@"2012-04-05"];
    [dictionary setObject:@"C Day" forKey:@"2012-04-06"];
    [dictionary setObject:@"C Day" forKey:@"2012-04-07"];
    [dictionary setObject:@"C Day" forKey:@"2012-04-08"];
    [dictionary setObject:@"C Day" forKey:@"2012-04-09"];
    [dictionary setObject:@"D Day" forKey:@"2012-04-10"];
    [dictionary setObject:@"E Day" forKey:@"2012-04-11"];
    [dictionary setObject:@"F Day" forKey:@"2012-04-12"];
    [dictionary setObject:@"G Day" forKey:@"2012-04-13"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-04-14"];
    [dictionary setObject:@"A Day" forKey:@"2012-04-15"];
    [dictionary setObject:@"A Day" forKey:@"2012-04-16"];
    [dictionary setObject:@"B Day" forKey:@"2012-04-17"];
    [dictionary setObject:@"C Day" forKey:@"2012-04-18"];
    [dictionary setObject:@"D Day" forKey:@"2012-04-19"];
    [dictionary setObject:@"E Day" forKey:@"2012-04-20"];
    [dictionary setObject:@"F Day" forKey:@"2012-04-21"];
    [dictionary setObject:@"F Day" forKey:@"2012-04-22"];
    [dictionary setObject:@"F Day" forKey:@"2012-04-23"];
    [dictionary setObject:@"G Day" forKey:@"2012-04-24"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-04-25"];
    [dictionary setObject:@"B Day" forKey:@"2012-04-26"];
    [dictionary setObject:@"C Day" forKey:@"2012-04-27"];
    [dictionary setObject:@"D Day" forKey:@"2012-04-28"];
    [dictionary setObject:@"D Day" forKey:@"2012-04-29"];
    [dictionary setObject:@"D Day" forKey:@"2012-04-30"];
    [dictionary setObject:@"E Day" forKey:@"2012-05-01"];
    [dictionary setObject:@"F Day" forKey:@"2012-05-02"];
    [dictionary setObject:@"G Day" forKey:@"2012-05-03"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-05-04"];
    [dictionary setObject:@"B Day" forKey:@"2012-05-05"];
    [dictionary setObject:@"B Day" forKey:@"2012-05-06"];
    [dictionary setObject:@"B Day" forKey:@"2012-05-07"];
    [dictionary setObject:@"C Day" forKey:@"2012-05-08"];
    [dictionary setObject:@"D Day" forKey:@"2012-05-09"];
    [dictionary setObject:@"E Day" forKey:@"2012-05-10"];
    [dictionary setObject:@"F Day" forKey:@"2012-05-11"];
    [dictionary setObject:@"G Day" forKey:@"2012-05-12"];
    [dictionary setObject:@"G Day" forKey:@"2012-05-13"];
    [dictionary setObject:@"G Day" forKey:@"2012-05-14"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-05-15"];
    [dictionary setObject:@"B Day" forKey:@"2012-05-16"];
    [dictionary setObject:@"C Day" forKey:@"2012-05-17"];
    [dictionary setObject:@"D Day" forKey:@"2012-05-18"];
    [dictionary setObject:@"E Day" forKey:@"2012-05-19"];
    [dictionary setObject:@"E Day" forKey:@"2012-05-20"];
    [dictionary setObject:@"E Day" forKey:@"2012-05-21"];
    [dictionary setObject:@"F Day" forKey:@"2012-05-22"];
    [dictionary setObject:@"G Day" forKey:@"2012-05-23"];
    
    [dictionary setObject:@"A Day" forKey:@"2012-05-24"];
    [dictionary setObject:@"B Day" forKey:@"2012-05-25"];
    [dictionary setObject:@"X Day" forKey:@"2012-05-28"];
    [dictionary setObject:@"X Day" forKey:@"2012-05-29"];
    [dictionary setObject:@"X Day" forKey:@"2012-05-30"];
    [dictionary setObject:@"Final Exams" forKey:@"2012-05-31"];
    [dictionary setObject:@"Final Exams" forKey:@"2012-06-01"];
    [dictionary setObject:@"Final Exams" forKey:@"2012-06-02"];
    [dictionary setObject:@"Final Exams" forKey:@"2012-06-03"];
    [dictionary setObject:@"Final Exams" forKey:@"2012-06-04"];
    [dictionary setObject:@"Final Exams" forKey:@"2012-06-05"];
    [dictionary setObject:@"Grading Day" forKey:@"2012-06-06"];
    [dictionary setObject:@"Honors Day" forKey:@"2012-06-07"];
    [dictionary setObject:@"Commencement" forKey:@"2012-06-08"];



    
    
    //[letterday setText:LetterDay];
    [letterday setText:[dictionary objectForKey:LetterDay]];
    
    
    NSMutableDictionary *imageforlabel = [[NSMutableDictionary alloc] init];

                     
                    [imageforlabel setObject:[UIImage imageNamed:@"Aday.png"] forKey:@"A Day"];
                    [imageforlabel setObject:[UIImage imageNamed:@"Bday.png"] forKey:@"B Day"];
                    [imageforlabel setObject:[UIImage imageNamed:@"Cday.png"] forKey:@"C Day"];
                    [imageforlabel setObject:[UIImage imageNamed:@"Dday.png"] forKey:@"D Day"];
                    [imageforlabel setObject:[UIImage imageNamed:@"Eday.png"] forKey:@"E Day"];
                    [imageforlabel setObject:[UIImage imageNamed:@"Fday.png"] forKey:@"F Day"];
                    [imageforlabel setObject:[UIImage imageNamed:@"Gday.png"] forKey:@"G Day"];
                     
    rotationday.image = [imageforlabel objectForKey:letterday.text];
    


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
