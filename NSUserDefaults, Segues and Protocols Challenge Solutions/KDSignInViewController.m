//
//  KDSignInViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solutions
//
//  Created by Samuel D Doherty on 5/26/14.
//  Copyright (c) 2014 Home. All rights reserved.
//

#import "KDSignInViewController.h"

@interface KDSignInViewController ()

@end

@implementation KDSignInViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[KDCreateAccountViewController class]]){
        KDCreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:sender];
}

- (IBAction)loginButtonPressed:(UIButton *)sender {
    NSString *username = [[NSUserDefaults standardUserDefaults]objectForKey:USER_NAME];
    NSString *password = [[NSUserDefaults standardUserDefaults]objectForKey:USER_PASSWORD];
    
    if ([self.usernameTextField.text isEqualToString:username] && [self.passwordTextField.text isEqualToString:password]) {
           [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Username or password combination does not work" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
    }
 
}
#pragma mark - KDCreateAccountViewController Delegate

-(void)didCancel {
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)didCreateAccount {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
