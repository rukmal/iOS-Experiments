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
    [_number2 setDelegate:self];
    [_number2 setReturnKeyType:UIReturnKeyDone];
    [_number2 addTarget:self
                 action:@selector(textFieldFinished:)
       forControlEvents:UIControlEventEditingDidEndOnExit];
    [_number1 setDelegate:self];
    [_number1 setReturnKeyType:UIReturnKeyDone];
    [_number1 addTarget:self
                       action:@selector(textFieldFinished:)
             forControlEvents:UIControlEventEditingDidEndOnExit];
}

- (void)textFieldFinished:(id)sender
{
    
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
    NSString *no2text = _number2.text;
    NSLog(@"%@", no1text);
    NSLog(@"%@", no2text);
}
@end
