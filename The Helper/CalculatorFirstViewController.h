//
//  CalculatorFirstViewController.h
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EmiInput.h"

#import "EmiDataController.h"

#import "EmiViewController.h"

@interface CalculatorFirstViewController : UIViewController <UITextFieldDelegate>{
    UILabel *sliderLabel;
    UITextField *principalAmount;
    UITextField *loanTerm;
    UISlider *rate;
} 

-(IBAction) sliderChanged:(id) sender;

@property (nonatomic) IBOutlet UITextField *principalAmount;
@property (nonatomic) IBOutlet UITextField *loanTerm;
@property (nonatomic) IBOutlet UISlider *rate;

@property (nonatomic) IBOutlet UILabel *sliderLabel;
- (IBAction)Calculate:(id)sender;

//- (EmiDataController *)CalculateEmi;


//- (void)CalculateEmi:(id)sender;
//@property (strong, nonatomic) EmiDataController *DataController;


@end
