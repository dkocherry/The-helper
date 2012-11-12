//
//  EmiInput.h
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EmiInput : NSObject

@property (nonatomic, copy) NSNumber *principalAmount;
@property (nonatomic, copy) NSNumber *interestRate;
@property (nonatomic, copy) NSNumber *loanTerm;

- (id) initWithPrincipalAmount:(float)principal interestRate:(int)rate loanTerm:(float)term;

- (float)annualToMonthly;


@end
