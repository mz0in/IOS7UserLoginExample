//
//  KDSignInViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solutions
//
//  Created by Samuel D Doherty on 5/26/14.
//  Copyright (c) 2014 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KDCreateAccountViewController.h"
@interface KDSignInViewController : UIViewController <KDCreateAccountViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender;
- (IBAction)loginButtonPressed:(UIButton *)sender;

@end
