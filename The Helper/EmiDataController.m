//
//  EmiDataController.m
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EmiDataController.h"

#import "EmiInput.h"

@class EmiInput;

@implementation EmiDataController

@synthesize emi = _emi;

@synthesize interestPayable = _interestPayable;

@synthesize totalPayment = _totalPayment;

@synthesize input;


- (id) initWithEmi:(float)emi interestPayable:(float)interest totalPayment:(float)total {
    //This function is used to initialize a data controller object having all the outputs to be displayed
    self = [super init];
    
    if (self) {
        
        _emi = [[NSNumber alloc] initWithFloat:emi];
        
        _interestPayable = [[NSNumber alloc] initWithFloat:interest]; 
        
        _totalPayment = [[NSNumber alloc] initWithFloat:total];
        
        
    }
    return self;
    
} 

- (EmiDataController *)calculate{
    
    EmiInput *inputData = [EmiInput alloc];
    inputData = self.input;
    
    float monthlyRate = [inputData annualToMonthly];
    
    float principal = [inputData.principalAmount floatValue];
    
    float term = [inputData.loanTerm floatValue];
    NSLog(@"The principal value passed to calculate is %@",inputData.principalAmount);
    
    
    float emi, total, interest;
    
    if ( (term != 0)&& (principal != 0) ) {
        
        float tempA = (1+monthlyRate);
       
        emi = principal * monthlyRate * powf(tempA, term)/ (powf(tempA, term)- 1);
        
        NSNumber *tempOne = [[NSNumber alloc] initWithFloat:emi];
        NSLog(@"calculated emi is %@", tempOne);
        total = emi * term;
        
        interest = total - principal;
      }
    else {
        emi = 0;
        
        total = principal;
        
        interest = 0;
    }   
    
    
    //The function to initialise the data controller object is called using these calculated values
    
    EmiDataController *emiOutput = [[EmiDataController alloc] initWithEmi:emi interestPayable:interest totalPayment:total];
   
    NSLog(@"The value of emi returned by calculate function is %@", emiOutput.emi);
    return emiOutput;
    
}

@end
