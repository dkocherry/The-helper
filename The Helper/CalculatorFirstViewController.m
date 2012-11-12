//
//  CalculatorFirstViewController.m
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorFirstViewController.h"

#import "EmiViewController.h"

#import "EmiDataController.h"

#import "EmiInput.h"

@interface CalculatorFirstViewController ()

@end

@implementation CalculatorFirstViewController

@synthesize principalAmount;
@synthesize loanTerm;
@synthesize rate;
@synthesize sliderLabel;
//@synthesize DataController;

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ((textField == self.principalAmount) || (textField == self.loanTerm)) {
        [textField resignFirstResponder];
    }
    return YES;
}

-(IBAction)sliderChanged:(id)sender{
    
    UISlider *slider = (UISlider *) sender;
    
    int progressAsInt =(int)(slider.value + 0.5f);
    
    NSString *newText =[[NSString alloc]       
                        initWithFormat:@"%d",progressAsInt];
    
    self.sliderLabel.text = newText;
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)awakeFromNib
{
    [super awakeFromNib];
//    self.DataController =[[EmiDataController alloc] init];
}

- (void)viewDidUnload
{
    [self setPrincipalAmount:nil];
    [self setLoanTerm:nil];
    [self setRate:nil];
    [self setSliderLabel:nil];
  //  [self setDataController:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)Calculate:(id)sender {
    
  //  [self performSegueWithIdentifier:@"CalculateEmiValue" sender:sender];
       
}

/*- (EmiDataController *)CalculateEmi {

    
    //get inputs from textfields and slider and call the 
    //calculate method of EmiDataController
    //Then to pass the calculated values to next view controller
    //which is a table view controller
    
    float principalValue = [self.principalAmount.text floatValue];
     
    
    float termValue = [self.loanTerm.text floatValue];
        
        
    int rateValue = [self.sliderLabel.text intValue]; 
       
        
    EmiDataController *inputController;
    
    
//The Emi Input property of Emi dataController is initialised first 
    [inputController.input initWithPrincipalAmount:principalValue interestRate:rateValue loanTerm:termValue];
     
    
           
    EmiDataController *outputController = [inputController calculate];  
    return outputController;

 
}*/



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"CalculateEmiValue"]) 
    {
        
        float principalValue = [self.principalAmount.text floatValue];
                
        float termValue = [self.loanTerm.text floatValue];
        
        
        float rateValue = [self.sliderLabel.text floatValue]; 
        
        EmiInput *theInput = [[EmiInput alloc] initWithPrincipalAmount:principalValue interestRate:rateValue loanTerm:termValue];
        
        
       
        
       // theInput = [theInput initWithPrincipalAmount:principalValue interestRate:rateValue loanTerm:termValue];
        
        
        //NSLog(@"the term input value is %@",theInput.loanTerm);
        
        EmiDataController *inputController =[ EmiDataController alloc];
        
        inputController.input = theInput;
      //  NSLog(@"the input value is %@",inputController.input.loanTerm);
       // inputController.input = [inputController.input initWithPrincipalAmount:principalValue interestRate:rateValue loanTerm:termValue];
        
        EmiDataController *outputController = [ EmiDataController alloc];
        outputController = [inputController calculate]; 
        
        //NSLog(@"the calculated emi is %@", outputController.emi);
        EmiViewController *Display  = [EmiViewController alloc]; 
        
        //Opting for a more direct way to do it.
        //Display.emiData = outputController;                                
        //Display.emiData = [self CalculateEmi];
        
        
        Display = [segue destinationViewController];
        
        Display.theEmi = outputController.emi;
        
        Display.theInterest = outputController.interestPayable;
        
        Display.theTotal = outputController.totalPayment;
        
      //  NSLog(@"The emi value passed to view controller is %@", Display.theEmi);
                                    
      }
}

@end
