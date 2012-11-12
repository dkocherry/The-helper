//
//  CalculatorSecondViewController.m
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorSecondViewController.h"

#import "TipDataController.h"

#import "TipViewController.h"

@interface CalculatorSecondViewController ()

@end

@implementation CalculatorSecondViewController

@synthesize billAmount;
@synthesize tipRate;
@synthesize tipSliderLabel;
//@synthesize tipDataControl;

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.billAmount) {
        [textField resignFirstResponder];
    }
    return YES;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)awakeFromNib
{
    [super awakeFromNib];
//    self.tipDataControl =[[TipDataController alloc] init];
}

- (void)viewDidUnload
{
    [self setBillAmount:nil];
    [self setTipRate:nil];
    [self setTipSliderLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)TipCalculator:(id)sender {
   
 //   [self performSegueWithIdentifier:@"CalculateTip" sender:sender];
    //method definition to - get inputs, calculate, send result // next view
    
}

-(IBAction)sliderChanged:(id)sender{
    
    UISlider *slider = (UISlider *) sender;
    
    int progressAsInt =(int)(slider.value + 0.5f);
    
    NSString *newText =[[NSString alloc]       
                        initWithFormat:@"%d",progressAsInt];
    
    self.tipSliderLabel.text = newText;
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"CalculateTip"]) 
    {
        int billValue = [self.billAmount.text intValue];
        
        float rateValue = [self.tipSliderLabel.text floatValue]; 
      //  NSLog(@"The value of bill received from user is %@", billValue);
        
        //int billValue = [self.billAmount.text intValue];
        
        //int rateValue = [self.tipSliderLabel.text intValue]; 
        
   //     [self.tipDataControl initializeWithBill:billValue tipRate:rateValue];
                
//        [self.tipDataControl calculateTip];
        
        TipDataController *tipDataControl = [TipDataController alloc];
        [tipDataControl initializeWithBill:billValue tipRate:rateValue];
        NSLog(@"The stored billValue is %@", tipDataControl.theBill.billAmount);
                
        float theTip = [tipDataControl calculateTip]; 
        
        NSNumber *tip = [[NSNumber alloc] initWithFloat:theTip];
        
        NSLog(@"The caculated tip is %@", tip); 
                        
        TipViewController *Display = [TipViewController alloc]; 
        
                
        Display = [segue destinationViewController];
        
        Display.theFinalTip = tip;
        
        NSLog(@"The tip value passed to view controller is %@", Display.theFinalTip);
      
    }
}@end
