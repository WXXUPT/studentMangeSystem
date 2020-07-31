//
//  RegisterViewController.m
//  学生管理系统
//
//  Created by 王旭 on 2020/7/28.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage* backGround = [UIImage imageNamed:@"gogogo.jpg"];
    self.view.layer.contents = (id) backGround.CGImage;
    
    UIImageView* user = [UIImageView new];
    UIImageView* pass = [UIImageView new];
    user.frame = CGRectMake(10, 0, 50, 50);
    pass.frame = CGRectMake(10, 0, 50, 50);
    user.image = [UIImage imageNamed:@"tx3.png"];
    pass.image = [UIImage imageNamed:@"pass2.png"];

    _userLand = [[UITextField alloc] initWithFrame:CGRectMake(52, 280, 300, 53)];
    _passWord = [[UITextField alloc] initWithFrame:CGRectMake(52, 350, 300, 53)];
    _userLand.delegate = self;
    _passWord.delegate = self;
    
    [_userLand setBorderStyle:UITextBorderStyleRoundedRect];
    _userLand.leftView = user;
    _userLand.leftViewMode = UITextFieldViewModeAlways;
    
    [_passWord setBorderStyle:UITextBorderStyleRoundedRect];
    _passWord.leftView = pass;
    _passWord.leftViewMode = UITextFieldViewModeAlways;
    _passWord.secureTextEntry = YES;

    _userLand.placeholder = @"   请输入用户名...";
    _passWord.placeholder = @"   请输入密码...";

    [self.view addSubview:_userLand];
    [self.view addSubview:_passWord];
    
    UIButton* btnSure = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnSure setTitle:@"确认注册" forState:UIControlStateNormal];
    btnSure.titleLabel.font = [UIFont systemFontOfSize:20];
    btnSure.backgroundColor = [UIColor clearColor];
    btnSure.tintColor = [UIColor whiteColor];
    btnSure.layer.masksToBounds = YES;
    btnSure.layer.borderWidth = 2;
    btnSure.layer.borderColor = [UIColor whiteColor].CGColor;
    btnSure.frame = CGRectMake(160, 490, 100, 42);
    [btnSure addTarget:self action:@selector(pressSure) forControlEvents:UIControlEventTouchDown];

    [self.view addSubview:btnSure];
    
}
- (void) pressSure
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(changeValue:and:)])
    {
        //将自己的 textField.text 传给代理人
        [self.delegate changeValue:self.userLand.text and:self.passWord.text];
    }
    
    [self dismissViewControllerAnimated:NO completion:nil];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
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
