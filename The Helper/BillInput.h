//
//  BillInput.h
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BillInput : NSObject

@property (nonatomic, copy) NSNumber *billAmount;
@property (nonatomic, copy) NSNumber *tipRate;


- (id) initWithBillAmount:(int)bill tipRate:(float)tipRate;



@end
