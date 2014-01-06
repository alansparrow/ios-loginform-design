//
//  ASViewController.h
//  LoginForm
//
//  Created by Alan Sparrow on 1/6/14.
//  Copyright (c) 2014 Alan Sparrow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASViewController : UIViewController <UITextFieldDelegate>

{
    __weak IBOutlet UITextField *emailField;
    
    __weak IBOutlet UITextField *passwordField;
    __weak IBOutlet UIScrollView *containerScrollView;
}

@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UIScrollView *containerScrollView;
- (IBAction)aboutButtonClick:(id)sender;

@end
