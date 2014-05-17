//
//  RWViewController.m
//  Simple Calc
//
//  Created by Rukmal Weerawarana on 5/15/14.
//  Copyright (c) 2014 Rukmal Weerawarana. All rights reserved.
//

#import "RWViewController.h"

@interface RWViewController ()

@property (strong, nonatomic) NSArray *options;

@end

@implementation RWViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *data = [[NSArray alloc] initWithObjects:@"Add", @"Subtract", @"Multiply", @"Divide", nil];
    _options = data;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Picker Data source methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [_options count];
}

#pragma Picker delegate methods

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_options objectAtIndex:row];
}

@end