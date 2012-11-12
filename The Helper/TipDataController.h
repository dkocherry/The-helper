//
//  TipDataController.h
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BillInput.h"

@class BillInput;

@interface TipDataController : NSObject

@property (nonatomic) NSNumber *tip;

@property (nonatomic, strong) BillInput *theBill;

- (id) initWithTip:(float)tip;

- (float)calculateTip; 

//- (void) setTheBill:(BillInput *)aBill;

- (void) initializeWithBill:(int)billAmt tipRate:(float)tipRate;

@end
