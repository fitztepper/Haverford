//
//  FifthViewController.m
//  Haverford
//
//  Created by Fitz Tepper on 2/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FifthViewController.h"
#import "AppDelegate.h"
#import "DetailViewController.h"
#import <UIKit/UIKit.h>




@implementation FifthViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Faculty", @"Faculty");
        self.tabBarItem.image = [UIImage imageNamed:@"people"];
        
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
	//Initialize the array.
	listOfItems = [[NSMutableArray alloc] init];
    
    NSArray *adminTeachersArray = [NSArray arrayWithObjects:@"Mr. Green", @"Mr. Fifer", @"Ms. Kasmen", nil];
	NSDictionary *adminTeachersDict = [NSDictionary dictionaryWithObject:adminTeachersArray forKey:@"Teachers"];
    
	
	NSArray *scienceTeachersArray = [NSArray arrayWithObjects:@"Mr. Becker", @"Mrs. Cleffi", @"Mr. Deasey", @"Mr. Maley", @"Ms. O'Brien", @"Mr. Rooney", @"Mr. Trocano", nil];
	NSDictionary *scienceTeachersDict = [NSDictionary dictionaryWithObject:scienceTeachersArray forKey:@"Teachers"];
	
	NSArray *mathTeachersArray = [NSArray arrayWithObjects:@"Mr. Gaudreau", @"Dr. Gottlieb", @"Mr. Loving", @"Mr. Murtha", @"Mr. Patrylak", @"Mr. Sweeney", nil];
	NSDictionary *mathTeachersDict = [NSDictionary dictionaryWithObject:mathTeachersArray forKey:@"Teachers"];
    
    NSArray *englishTeachersArray = [NSArray arrayWithObjects:@"Mrs. Davis", @"Mr. Graham", @"Mr. Keefe", @"Mr. Scibilia", @"Ms. Smedley", @"Mr. Stambaugh", nil];
	NSDictionary *englishTeachersDict = [NSDictionary dictionaryWithObject:englishTeachersArray forKey:@"Teachers"];
    
    NSArray *historyTeachersArray = [NSArray arrayWithObjects:@"Mr. Fifer", @"Mr. Griffin", @"Mr. Hart", @"Mr. Miller", @"Mr. Tirado", @"Mr. Tryon", @"Dr. Ehrhart", nil];
	NSDictionary *historyTeachersDict = [NSDictionary dictionaryWithObject:historyTeachersArray forKey:@"Teachers"];
    
    NSArray *languageTeachersArray = [NSArray arrayWithObjects:@"Ms. Atkins", @"Ms. David", @"Ms. Hsieh", @"Ms. Hulme", @"Mrs. Mateos-Hirshman", @"Mrs. Meier-Fernandez", nil];
	NSDictionary *languageTeachersDict = [NSDictionary dictionaryWithObject:languageTeachersArray forKey:@"Teachers"];
    
    NSArray *arttheaterTeachersArray = [NSArray arrayWithObjects:@"Mr. Cloran", @"Mr. Fox", @"Mr. Frock", @"Mr. Nelson", nil];
	NSDictionary *arttheaterTeachersDict = [NSDictionary dictionaryWithObject:arttheaterTeachersArray forKey:@"Teachers"];
    
	
    [listOfItems addObject:adminTeachersDict];
	[listOfItems addObject:scienceTeachersDict];
	[listOfItems addObject:mathTeachersDict];
    [listOfItems addObject:englishTeachersDict];
    [listOfItems addObject:historyTeachersDict];
    [listOfItems addObject:languageTeachersDict];
    [listOfItems addObject:arttheaterTeachersDict];
    
    
	
	//Set the title
	self.navigationItem.title = @"Faculty Directory";
}


/*
 - (void)viewWillAppear:(BOOL)animated {
 [super viewWillAppear:animated];
 }
 */
/*
 - (void)viewDidAppear:(BOOL)animated {
 [super viewDidAppear:animated];
 }
 */
/*
 - (void)viewWillDisappear:(BOOL)animated {
 [super viewWillDisappear:animated];
 }
 */
/*
 - (void)viewDidDisappear:(BOOL)animated {
 [super viewDidDisappear:animated];
 }
 */

/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
	return [listOfItems count];
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	//Number of rows it should expect should be based on the section
	NSDictionary *dictionary = [listOfItems objectAtIndex:section];
    NSArray *array = [dictionary objectForKey:@"Teachers"];
	return [array count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	
	
    
    if(section == 0)
		return @"Administration";
    
    else if(section == 1)
		return @"Science Teachers";
	
    else if(section == 2)
        return @"Math Teachers";
    
    else if(section == 3)
        return @"English Teachers";
    
    else if(section == 4)
        return @"History Teachers";
    
    else if(section == 5)
        return @"Language Teachers";
    
    else if(section == 6)
        return @"Art and Theater Teachers";
    
    return nil;
}



// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
   if (cell == nil) {
       cell = [[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier];
   }
    
    // Set up the cell...
	
	//First get the dictionary object
	NSDictionary *dictionary = [listOfItems objectAtIndex:indexPath.section];
	NSArray *array = [dictionary objectForKey:@"Teachers"];
	NSString *cellValue = [array objectAtIndex:indexPath.row];
	cell.text = cellValue;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	//Get the selected teacher
	
	NSDictionary *dictionary = [listOfItems objectAtIndex:indexPath.section];
	NSArray *array = [dictionary objectForKey:@"Teachers"];
	NSString *selectedTeacher = [array objectAtIndex:indexPath.row];
	
	//Initialize the detail view controller and display it.
    
    
    DetailViewController *dvController = [[DetailViewController alloc] initWithNibName:nil bundle:nil] ; NSLog(@"Navigation controller: %@",self.navigationController);
    
	dvController.selectedTeacher = selectedTeacher;
	[self.navigationController pushViewController:dvController animated:YES];
}

- (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath {
	
	//return UITableViewCellAccessoryDetailDisclosureButton;
	return UITableViewCellAccessoryDisclosureIndicator;
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
	
	[self tableView:tableView didSelectRowAtIndexPath:indexPath];
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */


/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
 }   
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }   
 }
 */


/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */


/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */



@end
