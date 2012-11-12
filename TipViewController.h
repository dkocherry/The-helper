//
//  TipViewController.h
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TipDataController.h"

#import "BillInput.h"

@interface TipViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *TIPDisplay;

@property (copy, nonatomic) NSNumber * theFinalTip;


@end
