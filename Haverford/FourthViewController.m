//
//  FourthViewController.m
//  Haverford
//
//  Created by Fitz Tepper on 4/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FourthViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface FourthViewController ()

@end

@implementation FourthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"LS", @"LS");
        self.tabBarItem.image = [UIImage imageNamed:@"home"];
        
        
    }
    return self;
    
    
}


- (void)viewDidAppear:(BOOL)animated

{
    [TestFlight passCheckpoint:@"Lower School"];
    
    
    //get the date today
    
    
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"cccc, MMMM dd"];
    
    NSString *dateToday = [dateformatter stringFromDate:[NSDate date]];
    
    [currentdate setText:dateToday];
    
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
    [dictionary setObject:@"Day 6" forKey:@"2012-04-09"];
    [dictionary setObject:@"Day 1" forKey:@"2012-04-10"];
    [dictionary setObject:@"Day 2" forKey:@"2012-04-11"];
    [dictionary setObject:@"Day 3" forKey:@"2012-04-12"];
    [dictionary setObject:@"Day 4" forKey:@"2012-04-13"];
    
    [dictionary setObject:@"Day 5" forKey:@"2012-04-14"];
    [dictionary setObject:@"Day 5" forKey:@"2012-04-15"];
    [dictionary setObject:@"Day 5" forKey:@"2012-04-16"];
    [dictionary setObject:@"Day 6" forKey:@"2012-04-17"];
    [dictionary setObject:@"Day 1" forKey:@"2012-04-18"];
    [dictionary setObject:@"Day 2" forKey:@"2012-04-19"];
    [dictionary setObject:@"Day 3" forKey:@"2012-04-20"];
    [dictionary setObject:@"Day 4" forKey:@"2012-04-21"];
    [dictionary setObject:@"Day 4" forKey:@"2012-04-22"];
    [dictionary setObject:@"Day 4" forKey:@"2012-04-23"];
    [dictionary setObject:@"Day 5" forKey:@"2012-04-24"];
    
    [dictionary setObject:@"Day 6" forKey:@"2012-04-25"];
    [dictionary setObject:@"Day 1" forKey:@"2012-04-26"];
    [dictionary setObject:@"Day 2" forKey:@"2012-04-27"];
    [dictionary setObject:@"Day 3" forKey:@"2012-04-28"];
    [dictionary setObject:@"Day 3" forKey:@"2012-04-29"];
    [dictionary setObject:@"Day 3" forKey:@"2012-04-30"];
    [dictionary setObject:@"Day 4" forKey:@"2012-05-01"];
    [dictionary setObject:@"Day 4" forKey:@"2012-05-02"];
    [dictionary setObject:@"Day 4" forKey:@"2012-05-03"];
    
    [dictionary setObject:@"Day 1" forKey:@"2012-05-04"];
    [dictionary setObject:@"Day 2" forKey:@"2012-05-05"];
    [dictionary setObject:@"Day 2" forKey:@"2012-05-06"];
    [dictionary setObject:@"Day 2" forKey:@"2012-05-07"];
    [dictionary setObject:@"Day 3" forKey:@"2012-05-08"];
    [dictionary setObject:@"Day 4" forKey:@"2012-05-09"];
    [dictionary setObject:@"Day 5" forKey:@"2012-05-10"];
    [dictionary setObject:@"G-Parents Day" forKey:@"2012-05-11"];
    [dictionary setObject:@"Day 6" forKey:@"2012-05-12"];
    [dictionary setObject:@"Day 6" forKey:@"2012-05-13"];
    [dictionary setObject:@"Day 6" forKey:@"2012-05-14"];
    
    [dictionary setObject:@"Day 1" forKey:@"2012-05-15"];
    [dictionary setObject:@"Day 2" forKey:@"2012-05-16"];
    [dictionary setObject:@"Day 3" forKey:@"2012-05-17"];
    [dictionary setObject:@"Day 4" forKey:@"2012-05-18"];
    [dictionary setObject:@"Day 5" forKey:@"2012-05-19"];
    [dictionary setObject:@"Day 5" forKey:@"2012-05-20"];
    [dictionary setObject:@"Day 5" forKey:@"2012-05-21"];
    [dictionary setObject:@"Day 6" forKey:@"2012-05-22"];
    [dictionary setObject:@"Day 1" forKey:@"2012-05-23"];
    
    [dictionary setObject:@"Day 2" forKey:@"2012-05-24"];
    [dictionary setObject:@"Phillip Bishop" forKey:@"2012-05-25"];
    [dictionary setObject:@"No School" forKey:@"2012-05-28"];
    [dictionary setObject:@"Day 3" forKey:@"2012-05-29"];
    [dictionary setObject:@"Day 4" forKey:@"2012-05-30"];
    [dictionary setObject:@"Day 5" forKey:@"2012-05-31"];
    [dictionary setObject:@"Day 6" forKey:@"2012-06-01"];
        
    
    
    
    
    //[letterday setText:LetterDay];
    [letterday setText:[dictionary objectForKey:LetterDay]];

    
    
}

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
                                               object:nil];*/
    
    
}
/*
///WHAT DOES THIS DO????????
-(void)becomeActive:(NSNotification *)notification {
    // only respond if the selected tab is our current tab
    if (self.tabBarController.selectedIndex == 0) { // Tab 1 is 0 index, Tab 2 is 1, etc 
        [self viewDidAppear:YES];
    }
    
    
}*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
