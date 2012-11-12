//
//  EmiInput.m
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EmiInput.h"

@implementation EmiInput

@synthesize principalAmount = _principalAmount;

@synthesize interestRate = _interestRate;

@synthesize loanTerm = _loanTerm;

- (id) initWithPrincipalAmount:(float)principal interestRate:(int)rate loanTerm:(float)term{
    
    self = [super init];
    
    if (self) {
        
               
        /*NSNumber *termValue;
        
        termValue = [termValue initWithFloat:term];
            _loanTerm = termValue;  Can be shortened as done below */
        
        _loanTerm=[[NSNumber alloc] initWithFloat:term];             
        
        _principalAmount = [[NSNumber alloc] initWithFloat:principal];
        _interestRate = [[NSNumber alloc] initWithInt:rate];
             
    }
    return self;
}

- (float)annualToMonthly{
    
    float monthlyRate = [self.interestRate floatValue];
    int annualToMonthly = 12;
    
    monthlyRate = monthlyRate / annualToMonthly;
    return monthlyRate;
}


@end
