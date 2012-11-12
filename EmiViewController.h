//
//  EmiViewController.h
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EmiDataController.h"

#import "EmiInput.h"

@interface EmiViewController :UIViewController
@property (weak, nonatomic) IBOutlet UILabel *TotalDisplay;
@property (weak, nonatomic) IBOutlet UILabel *EmiDisplay;
@property (weak, nonatomic) IBOutlet UILabel *InterestDisplay;

@property (nonatomic, strong) NSNumber *theEmi;
@property (nonatomic, strong) NSNumber *theTotal;
@property (nonatomic,strong) NSNumber *theInterest;


//@property(strong, nonatomic) EmiDataController *emiData;

//- (void)setEmiData:(EmiDataController *)emiOutput;




@end
