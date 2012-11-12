//
//  EmiDataController.h
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "EmiInput.h" 

@class EmiInput; 

@interface EmiDataController : NSObject

@property (nonatomic) NSNumber *emi;

@property (nonatomic) NSNumber *interestPayable;

@property (nonatomic) NSNumber *totalPayment;

@property (nonatomic, strong) EmiInput *input;

// this is the initialization method for objects of this class

- (id) initWithEmi:(float)emi interestPayable:(float)interest totalPayment:(float)total; 

//THis is the method declared to take an input of type EMiUserInput and then return an object of type EmiDatacontroller which has all the outputs

- (EmiDataController *)calculate;


@end
