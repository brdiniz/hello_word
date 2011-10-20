//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Bruno Diniz on 10/20/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorldViewController.h"

@implementation HelloWorldViewController
@synthesize txt_name;
@synthesize bt_hello;
@synthesize lb_text;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setBt_hello:nil];
    [self setTxt_name:nil];
    [self setLb_text:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.txt_name) {
        [theTextField resignFirstResponder];
    }
    return YES;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)change_inside:(id)sender {
    NSString *user_name = self.txt_name.text;
    
    if ([user_name length] == 0){
        user_name = @"Word";
    }
    
    NSString *results = [[NSString alloc] initWithFormat:@"Hello, %@!", user_name];
    self.lb_text.text = results;
}

@end
