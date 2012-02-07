//
//  DetailViewController.m
//  Haverford
//
//  Created by Fitz Tepper on 2/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import <QuartzCore/QuartzCore.h>


@implementation DetailViewController
@synthesize selectedTeacher;


/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Round corners using CALayer property
    
    [[teacherPicture layer] setCornerRadius:5];
    [teacherPicture setClipsToBounds:YES];
    
    //Create colored border using CALayer property 
    [[teacherPicture layer] setBorderColor:
     [[UIColor colorWithRed:0 green:0. blue:0 alpha:1] CGColor]];
    [[UIColor colorWithWhite:1 alpha:1] CGColor];
    [[teacherPicture layer] setBorderWidth:2.75];
    
    [[self view] addSubview:teacherPicture];
    
	
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"paper.jpg"]];
    
    
	//Display the selected teacher.
	teacherName.text = selectedTeacher;
    
    
    
    
    //Display Picture of Each Teacher
    
    NSString *MrGreen = @"Mr. Green";
    NSString *MrTirado = @"Mr. Tirado";
    NSString *MrFifer = @"Mr. Fifer";
    NSString *MsKasmen = @"Ms. Kasmen";
    NSString *MrBecker = @"Mr. Becker";
    NSString *MrsCleffi = @"Mrs. Cleffi";
    NSString *MrDeasey = @"Mr. Deasey";
    NSString *MrMaley = @"Mr. Maley";
    NSString *MsObrien = @"Ms. O'Brien";
    NSString *MrRooney = @"Mr. Rooney";
    NSString *MrTrocano = @"Mr. Trocano";
    NSString *MrGaudreau = @"Mr. Gaudreau";
    NSString *DrGottlieb = @"Dr. Gottlieb";
    NSString *MrLoving = @"Mr. Loving";
    NSString *MrMurtha = @"Mr. Murtha";
    NSString *MrPatrylak = @"Mr. Patrylak";
    NSString *MrSweeney = @"Mr. Sweeney";
    NSString *MrsDavis = @"Mrs. Davis";
    NSString *DrEhrhart = @"Dr. Ehrhart";
    NSString *MrGraham = @"Mr. Graham";
    NSString *MrKeefe = @"Mr. Keefe";
    NSString *MrScibilia = @"Mr. Scibilia";
    NSString *MsSmedley = @"Ms. Smedley";
    NSString *MrStambaugh = @"Mr. Stambaugh";
    NSString *MrGriffin = @"Mr. Griffin";
    NSString *MrHart = @"Mr. Hart";
    NSString *MrMiller = @"Mr. Miller";
    NSString *MrTryon = @"Mr. Tryon";
    NSString *MsAdkins = @"Ms. Adkins";
    NSString *MsDavid = @"Ms. David";
    NSString *MsHsieh = @"Ms. Hsieh";
    NSString *MsHulme = @"Ms. Hulme";
    NSString *MrsHirshman = @"Mrs. Mateos-Hirshman";
    NSString *MrsFernandez = @"Mrs. Meier-Fernandez";
    NSString *MrCloran = @"Mr. Cloran";
    NSString *MrFox = @"Mr. Fox";
    NSString *MrFrock = @"Mr. Frock";
    NSString *MrNelson = @"Mr. Nelson";
    
    
    
    
    
    if ([selectedTeacher isEqualToString:MrTirado]) {
        teacherPicture.image = [UIImage imageNamed:@"Tirado.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrGreen]) {
        teacherPicture.image = [UIImage imageNamed:@"Green.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MsKasmen]) {
        teacherPicture.image = [UIImage imageNamed:@"Kasmen.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrBecker]) {
        teacherPicture.image = [UIImage imageNamed:@"Becker.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrsCleffi]) {
        teacherPicture.image = [UIImage imageNamed:@"Cleffi.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrDeasey]) {
        teacherPicture.image = [UIImage imageNamed:@"Deasey.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrMaley]) {
        teacherPicture.image = [UIImage imageNamed:@"Maley.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MsObrien]) {
        teacherPicture.image = [UIImage imageNamed:@"Obrien.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrRooney]) {
        teacherPicture.image = [UIImage imageNamed:@"Rooney.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrTrocano]) {
        teacherPicture.image = [UIImage imageNamed:@"Trocano.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrGaudreau]) {
        teacherPicture.image = [UIImage imageNamed:@"Gaudreau.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:DrGottlieb]) {
        teacherPicture.image = [UIImage imageNamed:@"Gottlieb.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrLoving]) {
        teacherPicture.image = [UIImage imageNamed:@"Loving.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrMurtha]) {
        teacherPicture.image = [UIImage imageNamed:@"Murtha.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrPatrylak]) {
        teacherPicture.image = [UIImage imageNamed:@"Patrylak.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrSweeney]) {
        teacherPicture.image = [UIImage imageNamed:@"Sweeney.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrsDavis]) {
        teacherPicture.image = [UIImage imageNamed:@"Davis.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrGraham]) {
        teacherPicture.image = [UIImage imageNamed:@"Graham.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrKeefe]) {
        teacherPicture.image = [UIImage imageNamed:@"Keefe.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrScibilia]) {
        teacherPicture.image = [UIImage imageNamed:@"Scibilia.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MsSmedley]) {
        teacherPicture.image = [UIImage imageNamed:@"Smedley.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrStambaugh]) {
        teacherPicture.image = [UIImage imageNamed:@"Stambaugh.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrFifer]) {
        teacherPicture.image = [UIImage imageNamed:@"Fifer.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrGriffin]) {
        teacherPicture.image = [UIImage imageNamed:@"Griffin.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrHart]) {
        teacherPicture.image = [UIImage imageNamed:@"Hart.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrMiller]) {
        teacherPicture.image = [UIImage imageNamed:@"Miller.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrTirado]) {
        teacherPicture.image = [UIImage imageNamed:@"Tirado.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrTryon]) {
        teacherPicture.image = [UIImage imageNamed:@"Tryon.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:DrEhrhart]) {
        teacherPicture.image = [UIImage imageNamed:@"Ehrhart.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MsAdkins]) {
        teacherPicture.image = [UIImage imageNamed:@"Adkins.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MsDavid]) {
        teacherPicture.image = [UIImage imageNamed:@"David.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MsHsieh]) {
        teacherPicture.image = [UIImage imageNamed:@"Hsieh.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MsHulme]) {
        teacherPicture.image = [UIImage imageNamed:@"Hulme.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrsHirshman]) {
        teacherPicture.image = [UIImage imageNamed:@"Hirshman.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrsFernandez]) {
        teacherPicture.image = [UIImage imageNamed:@"Fernandez.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrCloran]) {
        teacherPicture.image = [UIImage imageNamed:@"Cloran.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrFox]) {
        teacherPicture.image = [UIImage imageNamed:@"Fox.jpg"];
        roomNumber.text =@"100";
    }
    if ([selectedTeacher isEqualToString:MrFrock]) {
        teacherPicture.image = [UIImage imageNamed:@"Frock.jpg"];
        roomNumber.text = @"100";
    }
    if ([selectedTeacher isEqualToString:MrNelson]) {
        teacherPicture.image = [UIImage imageNamed:@"Nelson.jpg"];
        roomNumber.text = @"100";
    }
    
    
    
	//Set the title of the navigation bar
	self.navigationItem.title = selectedTeacher;
    
    
}


// Set up an Email Link For Each Teacher

- (IBAction)emailTeacher:(id)sender {
    
    NSString *MrTirado = @"Mr. Tirado";
    NSString *MrGreen = @"Mr. Green";
    NSString *MrFifer = @"Mr. Fifer";
    NSString *MsKasmen = @"Ms. Kasmen";
    NSString *MrBecker = @"Mr. Becker";
    NSString *MrsCleffi = @"Mrs. Cleffi";
    NSString *MrDeasey = @"Mr. Deasey";
    NSString *MrMaley = @"Mr. Maley";
    NSString *MsObrien = @"Ms. O'Brien";
    NSString *MrRooney = @"Mr. Rooney";
    NSString *MrTrocano = @"Mr. Trocano";
    NSString *MrGaudreau = @"Mr. Gaudreau";
    NSString *DrGottlieb = @"Dr. Gottlieb";
    NSString *MrLoving = @"Mr. Loving";
    NSString *MrMurtha = @"Mr. Murtha";
    NSString *MrPatrylak = @"Mr. Patrylak";
    NSString *MrSweeney = @"Mr. Sweeney";
    NSString *MrsDavis = @"Mrs. Davis";
    NSString *DrEhrhart = @"Dr. Ehrhart";
    NSString *MrGraham = @"Mr. Graham";
    NSString *MrKeefe = @"Mr. Keefe";
    NSString *MrScibilia = @"Mr. Scibilia";
    NSString *MsSmedley = @"Ms. Smedley";
    NSString *MrStambaugh = @"Mr. Stambaugh";
    NSString *MrGriffin = @"Mr. Griffin";
    NSString *MrHart = @"Mr. Hart";
    NSString *MrMiller = @"Mr. Miller";
    NSString *MrTryon = @"Mr. Tryon";
    NSString *MsAdkins = @"Ms. Adkins";
    NSString *MsDavid = @"Ms. David";
    NSString *MsHsieh = @"Ms. Hsieh";
    NSString *MsHulme = @"Ms. Hulme";
    NSString *MrsHirshman = @"Mrs. Mateos-Hirshman";
    NSString *MrsFernandez = @"Mrs. Meier-Fernandez";
    NSString *MrCloran = @"Mr. Cloran";
    NSString *MrFox = @"Mr. Fox";
    NSString *MrFrock = @"Mr. Frock";
    NSString *MrNelson = @"Mr. Nelson";
    
    
    if ([selectedTeacher isEqualToString:MrTirado]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:dtirado@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrGreen]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:mgreen@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrFifer]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:mfifer@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsKasmen]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:akasmen@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrBecker]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:bbecker@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrsCleffi]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:kcleffi@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrDeasey]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:mdeasey@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrMaley]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:jmaley@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsObrien]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:cobrien@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrRooney]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:grooney@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrTrocano]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:ttrocano@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrGaudreau]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:jgaudreau@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:DrGottlieb]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:mgottlie@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrLoving]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:tloving@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrMurtha]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:smurtha@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrPatrylak]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:spatryla@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrSweeney]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:jsweeney@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrsDavis]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:bdavis@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:DrEhrhart]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:wehrhart@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrGraham]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:kgraham@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrKeefe]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:dkeefe@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrScibilia]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:ascibilia@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsSmedley]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:rsmedley@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrStambaugh]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:tstambaugh@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrGriffin]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:jgriffin@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrHart]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:kgraham@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrMiller]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:dmiller@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrTryon]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:ktryon@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsAdkins]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:sadkins@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsDavid]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:ddavid@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsHsieh]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:shsieh@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsHulme]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:kgraham@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrsHirshman]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:chirshman@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrsFernandez]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:cfernandez@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrCloran]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:mcloran@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrFox]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:cfox@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrFrock]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:mfrock@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrNelson]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mail:cnelson@haverford.org"]];
    }
    
}

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




- (void)viewDidUnload {
  }
@end
