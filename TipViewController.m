//
//  TipViewController.m
//  The Helper
//
//  Created by user on 11/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TipViewController.h"

@interface TipViewController ()

@end

@implementation TipViewController

@synthesize TIPDisplay;

@synthesize theFinalTip;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
      // Custom initialization
        
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSNumber *tipAmount = [NSNumber alloc]; 
    tipAmount = self.theFinalTip;  
    
      NSLog(@"The tip value recieved by view controller is %@", self.theFinalTip);
    
        NSString *greeting = [[NSString alloc] initWithFormat:@"Tip Amount is Rs.%@ /-", tipAmount];
        
        self.TIPDisplay.text = greeting; 
    
 //   }    
    // Do any additional setup after loading the view.
    
}

- (void)viewDidUnload
{
    [self setTIPDisplay:nil];
    [self setTheFinalTip:nil];
                
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
