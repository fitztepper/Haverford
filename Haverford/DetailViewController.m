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
    NSString *DrFenton = @"Dr. Fenton";

    NSString *MrAlford = @"Mr. Alford";
    NSString *MrsBaroody = @"Mrs. Baroody";
    NSString *MrFairfax = @"Mr. Fairfax";
    NSString *MsHudson = @"Ms. Hudson";
    NSString *MrKnight = @"Mr. Knight";
    NSString *MrKolade = @"Mr. Kolade";
    NSString *MrPoolman = @"Mr. Poolman";
    NSString *MrRessler = @"Mr. Ressler";
    NSString *MrSCloran = @"Mr. Stephen Cloran";
    NSString *MrSlack = @"Mr. Slack";
    NSString *MsTassoni = @"Ms. Tassoni";
    NSString *MrUpton = @"Mr. Upton";
    NSString *MrWalters = @"Mr. Walters";
    NSString *MsBardell = @"Ms. Bardell";
    NSString *MrStairs = @"Mr. Stairs";
    NSString *MsLoos = @"Ms. Loos";
    
    NSString *MrCousins = @"Mr. Cousins";
    NSString *MsLey = @"Ms. Ley";
    NSString *MrPearson = @"Mr. Pearson";




    

    
    
    
    
    if ([selectedTeacher isEqualToString:MrTirado]) {
        teacherPicture.image = [UIImage imageNamed:@"Tirado.jpg"];
        roomNumber.text =@"244";
    }
    if ([selectedTeacher isEqualToString:MrGreen]) {
        teacherPicture.image = [UIImage imageNamed:@"Green.jpg"];
        roomNumber.text = @"130B";
    }
    if ([selectedTeacher isEqualToString:MsKasmen]) {
        teacherPicture.image = [UIImage imageNamed:@"Kasmen.jpg"];
        roomNumber.text =@"130";
    }
    if ([selectedTeacher isEqualToString:MrBecker]) {
        teacherPicture.image = [UIImage imageNamed:@"Becker.jpg"];
        roomNumber.text = @"256";
    }
    if ([selectedTeacher isEqualToString:MrsCleffi]) {
        teacherPicture.image = [UIImage imageNamed:@"Cleffi.jpg"];
        roomNumber.text =@"150";
    }
    if ([selectedTeacher isEqualToString:MrDeasey]) {
        teacherPicture.image = [UIImage imageNamed:@"Deasey.jpg"];
        roomNumber.text = @"251";
    }
    if ([selectedTeacher isEqualToString:MrMaley]) {
        teacherPicture.image = [UIImage imageNamed:@"Maley.jpg"];
        roomNumber.text =@"151";
    } 
    if ([selectedTeacher isEqualToString:MsObrien]) {
        teacherPicture.image = [UIImage imageNamed:@"Obrien.jpg"];
        roomNumber.text = @"150";
    }
    if ([selectedTeacher isEqualToString:MrRooney]) {
        teacherPicture.image = [UIImage imageNamed:@"Rooney.jpg"];
        roomNumber.text =@"151";
    }
    if ([selectedTeacher isEqualToString:MrTrocano]) {
        teacherPicture.image = [UIImage imageNamed:@"Trocano.jpg"];
        roomNumber.text = @"253";
    }
    if ([selectedTeacher isEqualToString:MrGaudreau]) {
        teacherPicture.image = [UIImage imageNamed:@"Gaudreau.jpg"];
        roomNumber.text =@"143";
    }
    if ([selectedTeacher isEqualToString:DrGottlieb]) {
        teacherPicture.image = [UIImage imageNamed:@"Gottlieb.jpg"];
        roomNumber.text = @"144";
    }
    if ([selectedTeacher isEqualToString:MrLoving]) {
        teacherPicture.image = [UIImage imageNamed:@"Loving.jpg"];
        roomNumber.text =@"145";
    }
    if ([selectedTeacher isEqualToString:MrMurtha]) {
        teacherPicture.image = [UIImage imageNamed:@"Murtha.jpg"];
        roomNumber.text = @"141";
    }
    if ([selectedTeacher isEqualToString:MrPatrylak]) {
        teacherPicture.image = [UIImage imageNamed:@"Patrylak.jpg"];
        roomNumber.text =@"041";
    }
    if ([selectedTeacher isEqualToString:MrSweeney]) {
        teacherPicture.image = [UIImage imageNamed:@"Sweeney.jpg"];
        roomNumber.text = @"140";
    }
    if ([selectedTeacher isEqualToString:MrsDavis]) {
        teacherPicture.image = [UIImage imageNamed:@"Davis.jpg"];
        roomNumber.text =@"146";
    }
    if ([selectedTeacher isEqualToString:MrGraham]) {
        teacherPicture.image = [UIImage imageNamed:@"Graham.jpg"];
        roomNumber.text = @"344";
    }
    if ([selectedTeacher isEqualToString:MrKeefe]) {
        teacherPicture.image = [UIImage imageNamed:@"Keefe.jpg"];
        roomNumber.text =@"341";
    }
    if ([selectedTeacher isEqualToString:MrScibilia]) {
        teacherPicture.image = [UIImage imageNamed:@"Scibilia.jpg"];
        roomNumber.text = @"340";
    }
    if ([selectedTeacher isEqualToString:MsSmedley]) {
        teacherPicture.image = [UIImage imageNamed:@"Smedley.jpg"];
        roomNumber.text = @"343";
    }
    if ([selectedTeacher isEqualToString:MrStambaugh]) {
        teacherPicture.image = [UIImage imageNamed:@"Stambaugh.jpg"];
        roomNumber.text =@"345";
    }
    if ([selectedTeacher isEqualToString:MrFifer]) {
        teacherPicture.image = [UIImage imageNamed:@"Fifer.jpg"];
        roomNumber.text = @"130C";
    }
    if ([selectedTeacher isEqualToString:MrGriffin]) {
        teacherPicture.image = [UIImage imageNamed:@"Griffin.jpg"];
        roomNumber.text =@"245";
    }
    if ([selectedTeacher isEqualToString:MrHart]) {
        teacherPicture.image = [UIImage imageNamed:@"Hart.jpg"];
        roomNumber.text = @"241";
    }
    if ([selectedTeacher isEqualToString:MrMiller]) {
        teacherPicture.image = [UIImage imageNamed:@"Miller.jpg"];
        roomNumber.text =@"240";
    }
    if ([selectedTeacher isEqualToString:MrTirado]) {
        teacherPicture.image = [UIImage imageNamed:@"Tirado.jpg"];
        roomNumber.text = @"244";
    }
    if ([selectedTeacher isEqualToString:MrTryon]) {
        teacherPicture.image = [UIImage imageNamed:@"Tryon.jpg"];
        roomNumber.text =@"243";
    }
    if ([selectedTeacher isEqualToString:DrEhrhart]) {
        teacherPicture.image = [UIImage imageNamed:@"Ehrhart.jpg"];
        roomNumber.text = @"246";
    }
    if ([selectedTeacher isEqualToString:MsAdkins]) {
        teacherPicture.image = [UIImage imageNamed:@"Adkins.jpg"];
        roomNumber.text = @"310";
    }
    if ([selectedTeacher isEqualToString:MsDavid]) {
        teacherPicture.image = [UIImage imageNamed:@"David.jpg"];
        roomNumber.text =@"208";
    }
    if ([selectedTeacher isEqualToString:MsHsieh]) {
        teacherPicture.image = [UIImage imageNamed:@"Hsieh.jpg"];
        roomNumber.text = @"309";
    }
    if ([selectedTeacher isEqualToString:MsHulme]) {
        teacherPicture.image = [UIImage imageNamed:@"Hulme.jpg"];
        roomNumber.text =@"302";
    }
    if ([selectedTeacher isEqualToString:MrsHirshman]) {
        teacherPicture.image = [UIImage imageNamed:@"Hirschman.jpg"];
        roomNumber.text = @"210";
    }
    if ([selectedTeacher isEqualToString:MrsFernandez]) {
        teacherPicture.image = [UIImage imageNamed:@"Fernandez.jpg"];
        roomNumber.text =@"209";
    }
    if ([selectedTeacher isEqualToString:MrCloran]) {
        teacherPicture.image = [UIImage imageNamed:@"Cloran.jpg"];
        roomNumber.text = @"Ball";
    }
    if ([selectedTeacher isEqualToString:MrFox]) {
        teacherPicture.image = [UIImage imageNamed:@"Fox.jpg"];
        roomNumber.text =@"051";
    }
    if ([selectedTeacher isEqualToString:MrFrock]) {
        teacherPicture.image = [UIImage imageNamed:@"Frock.jpg"];
        roomNumber.text = @"053";
    }
    if ([selectedTeacher isEqualToString:MrNelson]) {
        teacherPicture.image = [UIImage imageNamed:@"Nelson.jpg"];
        roomNumber.text = @"050";
    }
    
    if ([selectedTeacher isEqualToString:DrFenton]) {
        teacherPicture.image = [UIImage imageNamed:@"Fenton.jpg"];
        roomNumber.text = @"207";
    }
    
    
    
    
    
    if ([selectedTeacher isEqualToString:MrAlford]) {
        teacherPicture.image = [UIImage imageNamed:@"Alford.jpg"];
        roomNumber.text =@"152";
    }
    if ([selectedTeacher isEqualToString:MrsBaroody]) {
        teacherPicture.image = [UIImage imageNamed:@"Baroody.jpg"];
        roomNumber.text = @"107";
    }
    if ([selectedTeacher isEqualToString:MrFairfax]) {
        teacherPicture.image = [UIImage imageNamed:@"Fairfax.jpg"];
        roomNumber.text =@"230";
    }
    if ([selectedTeacher isEqualToString:MsHudson]) {
        teacherPicture.image = [UIImage imageNamed:@"Hudson.jpg"];
        roomNumber.text = @"107D";
    }
    if ([selectedTeacher isEqualToString:MrKnight]) {
        teacherPicture.image = [UIImage imageNamed:@"Knight.jpg"];
        roomNumber.text =@"230";
    }
    if ([selectedTeacher isEqualToString:MrKolade]) {
        teacherPicture.image = [UIImage imageNamed:@"Kolade.jpg"];
        roomNumber.text = @"346";
    }
    if ([selectedTeacher isEqualToString:MrPoolman]) {
        teacherPicture.image = [UIImage imageNamed:@"Poolman.jpg"];
        roomNumber.text =@"301";
    }
    if ([selectedTeacher isEqualToString:MrRessler]) {
        teacherPicture.image = [UIImage imageNamed:@"Ressler.jpg"];
        roomNumber.text = @"051";
    }
    if ([selectedTeacher isEqualToString:MrSCloran]) {
        teacherPicture.image = [UIImage imageNamed:@"SCloran.jpg"];
        roomNumber.text = @"107D";
    }
    
    if ([selectedTeacher isEqualToString:MrSlack]) {
        teacherPicture.image = [UIImage imageNamed:@"Slack.jpg"];
        roomNumber.text = @"340";
    }
    
    if ([selectedTeacher isEqualToString:MsTassoni]) {
        teacherPicture.image = [UIImage imageNamed:@"Tassoni.jpg"];
        roomNumber.text =@"230";
    }
    if ([selectedTeacher isEqualToString:MrUpton]) {
        teacherPicture.image = [UIImage imageNamed:@"Upton.jpg"];
        roomNumber.text = @"040";
    }
    if ([selectedTeacher isEqualToString:MrWalters]) {
        teacherPicture.image = [UIImage imageNamed:@"Walters.jpg"];
        roomNumber.text = @"110";
    }
  
    if ([selectedTeacher isEqualToString:MsBardell]) {
        teacherPicture.image = [UIImage imageNamed:@"Bardell.jpg"];
        roomNumber.text = @"253";
    }
    
    if ([selectedTeacher isEqualToString:MrStairs]) {
        teacherPicture.image = [UIImage imageNamed:@"Stairs.jpg"];
        roomNumber.text = @"Centennial";
    }
    
    if ([selectedTeacher isEqualToString:MsLoos]) {
        teacherPicture.image = [UIImage imageNamed:@"Loos.jpg"];
        roomNumber.text = @"131";
    }
    
    
    
    
    
    if ([selectedTeacher isEqualToString:MrCousins]) {
        teacherPicture.image = [UIImage imageNamed:@"Cousins.jpg"];
        roomNumber.text = @"205";
    }
    
    if ([selectedTeacher isEqualToString:MsLey]) {
        teacherPicture.image = [UIImage imageNamed:@"Ley.jpg"];
        roomNumber.text = @"205";
    }
    
    if ([selectedTeacher isEqualToString:MrPearson]) {
        teacherPicture.image = [UIImage imageNamed:@"Pearson.jpg"];
        roomNumber.text = @"205";

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
    NSString *DrFenton = @"Dr. Fenton";

    NSString *MrAlford = @"Mr. Alford";
    NSString *MrsBaroody = @"Mrs. Baroody";
    NSString *MrFairfax = @"Mr. Fairfax";
    NSString *MsHudson = @"Ms. Hudson";
    NSString *MrKnight = @"Mr. Knight";
    NSString *MrKolade = @"Mr. Kolade";
    NSString *MrPoolman = @"Mr. Poolman";
    NSString *MrRessler = @"Mr. Ressler";
    NSString *MrSCloran = @"Mr. Stephen Cloran";
    NSString *MrSlack = @"Mr. Slack";
    NSString *MsTassoni = @"Ms. Tassoni";
    NSString *MrUpton = @"Mr. Upton";
    NSString *MrWalters = @"Mr. Walters";
    NSString *MsBardell = @"Ms. Bardell";
    NSString *MrStairs = @"Mr. Stairs";
    NSString *MsLoos = @"Ms. Loos";

    NSString *MrCousins = @"Mr. Cousins";
    NSString *MsLey = @"Ms. Ley";
    NSString *MrPearson = @"Mr. Pearson";


    
    
    if ([selectedTeacher isEqualToString:MrTirado]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:dtirado@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrGreen]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:mgreen@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrFifer]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:mfifer@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsKasmen]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:akasmen@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrBecker]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:bbecker@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrsCleffi]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:kcleffi@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrDeasey]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:mdeasey@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrMaley]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:jmaley@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsObrien]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:cobrien@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrRooney]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:grooney@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrTrocano]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:ttrocano@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrGaudreau]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:jgaudreau@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:DrGottlieb]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:mgottlie@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrLoving]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:tloving@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrMurtha]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:smurtha@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrPatrylak]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:spatryla@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrSweeney]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:jsweeney@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrsDavis]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:bdavis@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:DrEhrhart]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:wehrhart@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrGraham]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:kgraham@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrKeefe]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:dkeefe@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrScibilia]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:ascibilia@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsSmedley]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:rsmedley@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrStambaugh]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:tstambaugh@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrGriffin]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:jgriffin@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrHart]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:rhart@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrMiller]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:dmiller@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrTryon]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:ktryon@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsAdkins]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:sadkins@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsDavid]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:ddavid@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsHsieh]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:shsieh@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsHulme]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:ehulme@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrsHirshman]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:cmateos@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrsFernandez]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:cfernandez@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrCloran]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:mcloran@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrFox]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:cfox@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrFrock]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:mfrock@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrNelson]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:cnelson@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:DrFenton]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:dfenton@haverford.org"]];
    }
    
    
    if ([selectedTeacher isEqualToString:MrAlford]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:salford@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrsBaroody]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:bbaroody@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrFairfax]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:hfairfax@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsHudson]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:khudson@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrKnight]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:dknight@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrKolade]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:lkolade@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrPoolman]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:apoolman@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrRessler]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:gressler@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrSCloran]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:scloran@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrSlack]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:dslack@haverford.org"]];
    }
    
    if ([selectedTeacher isEqualToString:MsTassoni]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:stassoni@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrUpton]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:rupson@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrWalters]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:swalters@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsBardell]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:bbardell@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrStairs]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:mstairs@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsLoos]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:jloos@haverford.org"]];
    }
    
    if ([selectedTeacher isEqualToString:MrCousins]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:ncousins@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MsLey]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:kley@haverford.org"]];
    }
    if ([selectedTeacher isEqualToString:MrPearson]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"mailto:tpearson@haverford.org"]];
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
