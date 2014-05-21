//
//  RWViewController.h
//  Simple Calc
//
//  Created by Rukmal Weerawarana on 5/19/14.
//  Copyright (c) 2014 Rukmal Weerawarana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RWViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *operationPicker;
@property (weak, nonatomic) IBOutlet UITextField *number1;
@property (weak, nonatomic) IBOutlet UITextField *number2;
- (IBAction)calculateTrigger:(id)sender;

@end