//
//  CalculatorSecondViewController.h
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BillInput.h"

#import "TipDataController.h"

#import "TipViewController.h"


@interface CalculatorSecondViewController : UIViewController
<UITextFieldDelegate>{
    UISlider *tipRate;
    UITextField *billAmount;
    UILabel *tipSliderLabel;
    
}

-(IBAction) sliderChanged:(id) sender;

@property (nonatomic) IBOutlet UITextField *billAmount;

@property (nonatomic) IBOutlet UISlider *tipRate;
@property (nonatomic,retain) IBOutlet UILabel *tipSliderLabel;

- (IBAction)TipCalculator:(id)sender;

//@property (strong, nonatomic) TipDataController *tipDataControl;

@end
