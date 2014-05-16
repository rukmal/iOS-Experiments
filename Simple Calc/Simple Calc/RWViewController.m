//
//  RWViewController.m
//  Simple Calc
//
//  Created by Rukmal Weerawarana on 5/15/14.
//  Copyright (c) 2014 Rukmal Weerawarana. All rights reserved.
//

#import "RWViewController.h"

@interface RWViewController ()

@end

@implementation RWViewController

- (id) init
{
    self.options = [[NSArray init] initWithObjects:@"Add", @"Subtract", @"Multiply", @"Divide", nil];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
// returns the # of rows in each component
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.options count];
}

// tell the picker the title for a given component
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.options objectAtIndex:row];
}

@end