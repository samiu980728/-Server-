//
//  DJSSignUpViewController.m
//  DJSSignInAndSignUpApp
//
//  Created by 萨缪 on 2019/3/17.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import "DJSSignUpViewController.h"

@interface DJSSignUpViewController ()

@property (nonatomic, strong) UILabel * emialLabel;

//@property (non)

@property (nonatomic, strong) UILabel * nameLabel;

@property (nonatomic, strong) UILabel * passWordLabel;

@property (nonatomic, strong) UILabel * repectPassWordLabel;

@property (nonatomic, strong) UITextField * emialTextField;

@property (nonatomic, strong) UITextField * nameTextField;

@property (nonatomic, strong) UITextField * idTextFiled;

@property (nonatomic, strong) UITextField * msgTextFiled;

@property (nonatomic, strong) UITextField * msgCodeTextFiled;

@property (nonatomic, strong) UITextField * phoneTextField;

@property (nonatomic, strong) UITextField * userNameTextField;

@property (nonatomic, strong) UIButton * msgCodeButton;

//@property (nonatomic)

//@property (nonatomic, strong)

@end

@implementation DJSSignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton * returnButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [returnButton addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    returnButton.frame = CGRectMake(10, 10, 100, 30);
    returnButton.backgroundColor = [UIColor blackColor];
    [returnButton setTitle:@"返回" forState:UIControlStateNormal];
    [self.view addSubview:returnButton];
    
    self.emialLabel = [[UILabel alloc] init];
    self.emialLabel.text = @"请输入您的邮箱";
    self.emialLabel.font = [UIFont systemFontOfSize:14];
    self.emialLabel.frame = CGRectMake(50, 50, 140, 30);
    [self.view addSubview:self.emialLabel];
    
    self.emialTextField = [[UITextField alloc] init];
    self.emialTextField.placeholder = @"请输入您的邮箱";
    self.emialTextField.frame = CGRectMake(200, 50, 200, 30);
    [self.view addSubview:self.emialTextField];
    
    self.nameTextField = [[UITextField alloc] init];
    self.nameTextField.placeholder = @"请输入您的姓名";
    self.nameTextField.frame = CGRectMake(200, 80, 200, 30);
    [self.view addSubview:self.nameTextField];
    
    self.userNameTextField = [[UITextField alloc] init];
    self.userNameTextField.placeholder = @"请输入您的账号";
    self.userNameTextField.frame = CGRectMake(200, 110, 200, 30);
    [self.view addSubview:self.userNameTextField];
    
    self.msgTextFiled = [[UITextField alloc] init];
    self.msgTextFiled.placeholder = @"请输入您的个人简介";
    self.msgTextFiled.frame = CGRectMake(200, 140, 200, 30);
    [self.view addSubview:self.msgTextFiled];
    
    self.phoneTextField = [[UITextField alloc] init];
    self.phoneTextField.placeholder = @"请输入您的手机号";
    self.phoneTextField.frame = CGRectMake(200, 170, 200, 30);
    [self.view addSubview:self.phoneTextField];
    
    self.phoneTextField = [[UITextField alloc] init];
    self.phoneTextField.placeholder = @"请输入您的手机号";
    self.phoneTextField.frame = CGRectMake(200, 170, 200, 30);
    [self.view addSubview:self.phoneTextField];
    
    self.msgCodeTextFiled = [[UITextField alloc] init];
    self.msgCodeTextFiled.placeholder = @"请输入您的短信验证码";
    self.msgCodeTextFiled.frame = CGRectMake(200, 200, 200, 30);
    [self.view addSubview:self.msgCodeTextFiled];
    
    self.msgCodeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.msgCodeButton setTitle:@"点击发送短信" forState:UIControlStateNormal];
    self.msgCodeButton.frame = CGRectMake(50, 170, 150, 30);
    self.msgCodeButton.backgroundColor = [UIColor blackColor];
    [self.msgCodeButton addTarget:self action:@selector(pressMsgCodeButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.msgCodeButton];
}

- (void)pressMsgCodeButton:(UIButton *)button
{
    NSString * phoneString = [NSString stringWithFormat:@"%@",self.phoneTextField.text];
    NSURL * phoneUrl = [NSURL URLWithString:[NSString stringWithFormat:@"http://47.102.206.19:8080/user/get_msgcode.do%@",phoneString]];
    NSURLRequest * phoneRequest = [NSURLRequest requestWithURL:phoneUrl];
#pragma mark Reuqest 用POST请求
//    phoneRequest.HTTPMethod = @"POST";
//    phoneRequest
    NSURLSession * phoneSession = [NSURLSession sharedSession];
    NSURLSessionDataTask * phoneDataTask = [phoneSession dataTaskWithRequest:phoneRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil) {
            NSDictionary * phoneDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        }
    }];
    [phoneDataTask resume];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    UIBarButtonItem * returnButton = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(pressButton:)];
    self.navigationController.navigationItem.leftBarButtonItem = returnButton;
}

- (void)pressButton:(UIButton *)button
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
