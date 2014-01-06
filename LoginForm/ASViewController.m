//
//  ASViewController.m
//  LoginForm
//
//  Created by Alan Sparrow on 1/6/14.
//  Copyright (c) 2014 Alan Sparrow. All rights reserved.
//

#import "ASViewController.h"

@interface ASViewController ()

@end

@implementation ASViewController

@synthesize emailField, passwordField, containerScrollView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
}

- (void)keyboardWasShown:(NSNotification *)note
{
    CGPoint scrollPoint = CGPointMake(0.0, 170.0);
    [containerScrollView setContentOffset:scrollPoint animated:YES];
}

- (void)keyboardWillHide:(NSNotification *)note
{
    CGPoint scrollPoint = CGPointMake(0.0, 0.0);
    [containerScrollView setContentOffset:scrollPoint animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
//    [emailField resignFirstResponder];
//    [passwordField resignFirstResponder];
    [[self view] endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == emailField) {
        [passwordField becomeFirstResponder];
        [textField resignFirstResponder];
    } else {
        [textField resignFirstResponder];
    }
    return YES;
}

- (IBAction)aboutButtonClick:(id)sender {
    NSURL *url = [[NSURL alloc] initWithString:@"http://news.ycombinator.com"];
    [[UIApplication sharedApplication] openURL:url];
}
@end
