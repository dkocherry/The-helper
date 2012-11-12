//
//  BillInput.m
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BillInput.h"

@implementation BillInput

@synthesize billAmount = _billAmount;

@synthesize tipRate = _tipRate;

- (id) initWithBillAmount:(int)bill tipRate:(float)tipRate{
    
    
    self = [super init];
    
    if (self) {
        _billAmount = [[NSNumber alloc] initWithInt:bill];
        _tipRate = [[NSNumber alloc] initWithFloat:tipRate];
        
            
    }
    return self;
}


@end
