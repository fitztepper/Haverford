//
//  DetailViewController.h
//  Haverford
//
//  Created by Fitz Tepper on 2/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController {
    
    IBOutlet UILabel *teacherName;
    IBOutlet UILabel *roomNumber;
	NSString *selectedTeacher;
    IBOutlet UIImageView *teacherPicture;
    IBOutlet UIButton *emailTeacher;

}

@property (nonatomic, strong) NSString *selectedTeacher;

@end

