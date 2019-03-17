//
//  ViewController.m
//  DJSSignInAndSignUpApp
//
//  Created by 萨缪 on 2019/3/17.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import "ViewController.h"
#include "DJSSignUpViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel * nameLabel;

@property (nonatomic, strong) UILabel * passWordLabel;

@property (nonatomic, strong) UITextField * nameTextView;

@property (nonatomic, strong) UITextField * passWordTextView;

@property (nonatomic, strong) UIButton * signUpButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.nameLabel = [[UILabel alloc] init];
    self.nameLabel.frame = CGRectMake(100, 100, 100, 30);
    self.nameLabel.text = @"用户名";
    self.nameLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:self.nameLabel];
    
    self.passWordLabel = [[UILabel alloc] init];
    self.passWordLabel.frame = CGRectMake(100, 160, 100, 30);
    self.passWordLabel.font = [UIFont systemFontOfSize:20];
    self.passWordLabel.text = @"密码";
    [self.view addSubview:self.passWordLabel];
    
    self.nameTextView = [[UITextField alloc] init];
    self.nameTextView.frame = CGRectMake(210, 100, 200, 30);
    self.nameTextView.placeholder = @"请输入用户名";
    [self.view addSubview:self.nameTextView];
    
    self.passWordTextView = [[UITextField alloc] init];
    self.passWordTextView.frame = CGRectMake(210, 160, 200, 30);
    self.passWordTextView.placeholder = @"请输入用户名";
    [self.view addSubview:self.passWordTextView];
    
    self.signUpButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.signUpButton.frame = CGRectMake(300, 200, 100, 30);
    [self.signUpButton setTitle:@"注册" forState:UIControlStateNormal];
    self.signUpButton.backgroundColor = [UIColor blackColor];
    [self.signUpButton addTarget:self action:@selector(pressSignUpButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.signUpButton];
    
}

- (void)pressSignUpButton:(UIButton *)button
{
    DJSSignUpViewController * signUpViewCoontroller = [[DJSSignUpViewController alloc] init];
    [self presentViewController:signUpViewCoontroller animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
