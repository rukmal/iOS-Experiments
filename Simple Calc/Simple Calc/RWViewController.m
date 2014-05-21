//
//  RWViewController.m
//  Simple Calc
//
//  Created by Rukmal Weerawarana on 5/19/14.
//  Copyright (c) 2014 Rukmal Weerawarana. All rights reserved.
//

#import "RWViewController.h"

@interface RWViewController ()

@property NSArray *operations;

@end

@implementation RWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _operations = [[NSArray alloc] initWithObjects:@"Add", @"Subtract", @"Multiply", @"Divide", nil];
    _number1.keyboardType = UIKeyboardTypeDecimalPad;
    _number2.keyboardType = UIKeyboardTypeDecimalPad;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma Picker view stuff
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [_operations count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_operations objectAtIndex:row];
}

- (IBAction)calculateTrigger:(id)sender {
    NSString *no1text = _number1.text;
    NSLog(@"%@", no1text);
    NSLog(@"ere");
}
@end
