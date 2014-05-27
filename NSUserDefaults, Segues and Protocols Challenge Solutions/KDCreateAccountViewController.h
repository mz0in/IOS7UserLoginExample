//
//  KDCreateAccountViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solutions
//
//  Created by Samuel D Doherty on 5/26/14.
//  Copyright (c) 2014 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

#define USER_NAME @"username"
#define USER_PASSWORD @"password"

@protocol KDCreateAccountViewControllerDelegate <NSObject>

-(void)didCancel;
-(void)didCreateAccount;

@end

@interface KDCreateAccountViewController : UIViewController

@property (weak, nonatomic) id <KDCreateAccountViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;
- (IBAction)createAccountButtonPressed:(UIButton *)sender;

- (IBAction)cancelButtonPressed:(UIButton *)sender;

@end
