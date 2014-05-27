//
//  KDViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solutions
//
//  Created by Samuel D Doherty on 5/21/14.
//  Copyright (c) 2014 Home. All rights reserved.
//

#import "KDViewController.h"
#import "KDCreateAccountViewController.h"

@interface KDViewController ()

@end

@implementation KDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.usernameLabel.text = [[NSUserDefaults standardUserDefaults]objectForKey:USER_NAME];
    self.passwordLabel.text = [[NSUserDefaults standardUserDefaults]objectForKey:USER_PASSWORD];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
