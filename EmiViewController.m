//
//  EmiViewController.m
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EmiViewController.h"

@interface EmiViewController ()

@end

@implementation EmiViewController

@synthesize TotalDisplay;
@synthesize EmiDisplay;
@synthesize InterestDisplay;
@synthesize theEmi;
@synthesize theInterest;
@synthesize theTotal;
//@synthesize emiData = _emiData;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Custom initialization
    }
    return self;
}


 
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 // Do any additional setup after loading the view, typically from a nib.
    // EmiDataController *theController = self.emiData;
     
     NSLog(@"THe value of emi stored in the view controller object atthis point is  %@", self.theEmi);
     if (([self.theEmi floatValue]!=0)&&([self.theInterest floatValue] != 0) &&([self.theTotal floatValue] != 0))
     {                           
         NSNumber *emiCalculated = [NSNumber alloc];
         emiCalculated =  self.theEmi;
         NSLog(@"The value receieved by the view controller is %@",self.theEmi );
         
         
     NSNumber *interestCalculated = [NSNumber alloc];
         interestCalculated = self.theInterest;
         
     NSNumber *totalCalculated = [NSNumber alloc];
         totalCalculated = self.theTotal;
         
         NSString *greetA =[[NSString alloc] initWithFormat:@"Emi is calculated to be Rs: %@ /-", emiCalculated];
         
         
         NSString *greetB = [[NSString alloc] initWithFormat:@"Interest Payable is calculated to be Rs: %@ /-", interestCalculated];
         
         NSString *greetC =[[NSString alloc] initWithFormat:@"Total Payment is calculated to be Rs: %@ /-", totalCalculated];
         self.EmiDisplay.text = greetA;
         
         self.InterestDisplay.text = greetB;
         
         self.TotalDisplay.text = greetC;    
     }
     
     else
     {
         NSLog(@"The view contorller object does not get initialised so it skips ot the else loop and displays null");
         NSString *greetA = @"Calulated Emi is null";
         
         NSString *greetB = @"Calculated interest is null";
         
         NSString *greetC = @"Calculated total is null";
         
         self.EmiDisplay.text = greetA;
         
         self.InterestDisplay.text = greetB;
         
         self.TotalDisplay.text = greetC;
     }
         
       
 }
 
 - (void)viewDidUnload
 {
     [self setEmiDisplay:nil];
     [self setInterestDisplay:nil];
     [self setTotalDisplay:nil];
     [self setTheEmi:nil];
     [self setTheInterest:nil];
     [self setTheTotal:nil];
    
 [super viewDidUnload];
 // Release any retained subviews of the main view.
  }
 
 

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}




@end
