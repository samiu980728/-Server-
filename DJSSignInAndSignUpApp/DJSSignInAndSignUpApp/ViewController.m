//
//  ViewController.m
//  DJSSignInAndSignUpApp
//
//  Created by 萨缪 on 2019/3/17.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import "ViewController.h"
#import "DJSSignUpViewController.h"
#import "DJSChangePassWordViewController.h"
@interface ViewController ()

@property (nonatomic, strong) UILabel * nameLabel;

@property (nonatomic, strong) UILabel * passWordLabel;

@property (nonatomic, strong) UITextField * nameTextView;

@property (nonatomic, strong) UITextField * passWordTextView;

@property (nonatomic, strong) UIButton * signUpButton;

@property (nonatomic, strong) UIButton * registerAccountButton;

@property (nonatomic, strong) UIButton * forgetPassWordButton;

@property (nonatomic, strong) UIButton * changPassWordButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UINavigationController * navController = [[UINavigationController alloc] initWithRootViewController:self];
//    navController.title = @"个人账户";
//    navController.navigationBar.backgroundColor = [UIColor blueColor];
    self.title = @"个人账户";
//    self.navigationController.view.layer.shadowColor = [UIColor blackColor].CGColor;
//    self.navigationController.view.layer.shadowOffset = CGSizeMake(-10, 0);
//    self.navigationController.view.layer.shadowOpacity = 0.15;
//    self.navigationController.view.layer.shadowRadius = 10;
    
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
    
    self.changPassWordButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.changPassWordButton.frame = CGRectMake(100, 250, 100, 30);
    [self.changPassWordButton setTitle:@"修改密码" forState:UIControlStateNormal];
    self.changPassWordButton.backgroundColor = [UIColor blackColor];
    [self.changPassWordButton addTarget:self action:@selector(pressChangePassWordButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.changPassWordButton];
}

- (void)pressChangePassWordButton:(UIButton *)button
{
    DJSChangePassWordViewController * changePassWordViewController = [[DJSChangePassWordViewController alloc] init];
    
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
