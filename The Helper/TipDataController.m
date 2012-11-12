//
//  TipDataController.m
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TipDataController.h"

#import "BillInput.h"

@implementation TipDataController

@synthesize tip = _tip;

@synthesize theBill = _theBill;

- (id) initWithTip:(float)tip {
    //This function is used to initialize a data controller object having the output to be displayed
    self = [super init];
    
    if (self) {
        
       _tip = [[NSNumber alloc] initWithFloat:tip];
                }
    return nil;
      
    
} 
//customized setter not necessary

/*- (void) setTheBill:(BillInput *)aBill
    {
        if (_theBill != aBill)
        {
            _theBill = aBill;
            
        }
    }*/


- (void) initializeWithBill:(int)billAmt tipRate:(float)tipRate{
   
    BillInput *billItem = [[BillInput alloc] initWithBillAmount:billAmt tipRate:tipRate];
    
    self.theBill = billItem;
    
    NSLog(@"the data control object is initialised with bill %@",self.theBill.billAmount );
    //sometrouble here, it didnt go into initWithBillAmount
   // self.theBill = [self.theBill initWithBillAmount:billAmt tipRate:tipRate];
}


- (float)calculateTip{
    
    BillInput * inputData = [BillInput alloc];
    inputData = self.theBill;
    
    
    float bill = [inputData.billAmount floatValue];
    
    float rate = [inputData.tipRate floatValue];
    
    float tip = bill *rate /100;
        
    //The function to initialise the data controller object is called using this value
    
    //[self initWithTip:tip];
   
    return tip;
       
    
}
@end
