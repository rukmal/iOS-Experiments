//
//  RWViewController.m
//  HelloWorld
//
//  Created by Rukmal Weerawarana on 5/13/14.
//  Copyright (c) 2014 Rukmal Weerawarana. All rights reserved.
//

#import "RWViewController.h"

@interface RWViewController ()

@property NSInteger currentCount;

@end

@implementation RWViewController

- (id)init
{
    [self setCurrentCount:0];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)HWTrigger:(id)sender {
    [self incrementCounter];
    NSString *message = [NSString stringWithFormat:@"This is hello world #%d", (int)self.currentCount];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello World!" message:message delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];

}

- (void)incrementCounter
{
    NSInteger current = self.currentCount;
    [self setCurrentCount:(current + 1)];
}

@end
