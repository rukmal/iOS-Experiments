//
//  RWViewController.h
//  Simple Calc
//
//  Created by Rukmal Weerawarana on 5/15/14.
//  Copyright (c) 2014 Rukmal Weerawarana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RWViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UIPickerView *optionPicker;
@property (strong, nonatomic) NSArray *options;

@end