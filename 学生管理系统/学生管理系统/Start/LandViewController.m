//
//  LandViewController.m
//  学生管理系统
//
//  Created by 王旭 on 2020/7/28.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "LandViewController.h"
#import "HomeViewController.h"
#import "RegisterViewController.h"
@interface LandViewController ()

@end

@implementation LandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage* backGround = [UIImage imageNamed:@"gogogo.jpg"];
    self.view.layer.contents = (id) backGround.CGImage;
    
    UIImageView* user = [UIImageView new];
    UIImageView* pass = [UIImageView new];
    user.frame = CGRectMake(10, 0, 50, 50);
    pass.frame = CGRectMake(10, 0, 50, 50);
    user.image = [UIImage imageNamed:@"tx2.png"];
    pass.image = [UIImage imageNamed:@"pass.png"];

    _userLand1 = [[UITextField alloc] initWithFrame:CGRectMake(52, 280, 300, 53)];
    _passWord1 = [[UITextField alloc] initWithFrame:CGRectMake(52, 350, 300, 53)];
    _userLand1.delegate = self;
    _passWord1.delegate = self;
    
    [_userLand1 setBorderStyle:UITextBorderStyleRoundedRect];
    _userLand1.leftView = user;
    _userLand1.leftViewMode = UITextFieldViewModeAlways;
    
    [_passWord1 setBorderStyle:UITextBorderStyleRoundedRect];
    _passWord1.leftView = pass;
    _passWord1.leftViewMode = UITextFieldViewModeAlways;
    _passWord1.secureTextEntry = YES;

    _userLand1.placeholder = @"   请输入用户名...";
    _passWord1.placeholder = @"   请输入密码...";

    [self.view addSubview:_userLand1];
    [self.view addSubview:_passWord1];
    
    UIButton* btnLand = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnLand setTitle:@"登陆" forState:UIControlStateNormal];
    btnLand.titleLabel.font = [UIFont systemFontOfSize:20];
    btnLand.backgroundColor = [UIColor clearColor];
    btnLand.tintColor = [UIColor whiteColor];
    btnLand.layer.masksToBounds = YES;
    btnLand.layer.borderWidth = 2;
    btnLand.layer.borderColor = [UIColor whiteColor].CGColor;
    btnLand.frame = CGRectMake(75, 490, 100, 42);
    [btnLand addTarget:self action:@selector(pressLand) forControlEvents:UIControlEventTouchDown];

    UIButton* btnRegi = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnRegi setTitle:@"注册" forState:UIControlStateNormal];
    btnRegi.titleLabel.font = [UIFont systemFontOfSize:20];
    btnRegi.backgroundColor = [UIColor clearColor];
    btnRegi.tintColor = [UIColor whiteColor];
    btnRegi.layer.masksToBounds = YES;
    btnRegi.layer.borderWidth = 2;
    btnRegi.layer.borderColor = [UIColor whiteColor].CGColor;
    btnRegi.frame = CGRectMake(230, 490, 100, 42);
    [btnRegi addTarget:self action:@selector(pressRegi) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btnLand];
    [self.view addSubview:btnRegi];

}
- (void) pressLand
{
//    HomeViewController* home = [HomeViewController new];
//    UIWindow* window = self.view.window;
//
//    window.rootViewController = home;
    NSString* userGo = @"123";
    NSString* passGo = @"123";
    
    NSString* nameIn = _userLand1.text;
    NSString* passIn = _passWord1.text;
    if (([nameIn isEqualToString:userGo] && [passIn isEqualToString:passGo]) || (_name!=nil && _pass!=nil))
    {
            HomeViewController* home = [HomeViewController new];
            UIWindow* window = self.view.window;
        
            window.rootViewController = home;
    } else {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"账号或密码错误" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* sure = [UIAlertAction actionWithTitle:@"对不起" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:sure];
        [self presentViewController:alert animated:NO completion:nil];
    }
}
- (void) pressRegi
{
    RegisterViewController* regi = [RegisterViewController new];
    
    //第四步: SecondViewController 创建对象后,设置代理为 FirstViewController
    regi.delegate = self;

    //将 FirstViewController 中的 label.text 赋给 SecondViewController 的公共属性 value
    regi.userName = self.userLand1.text;
    regi.userPass = self.passWord1.text;
    
    regi.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:regi animated:NO completion:nil];
}
- (void)changeValue:(NSString *) userName and:(NSString*) userPass
{
    //将 SecondViewController 传来的值赋给label.text
    self.userLand1.text = userName;
    self.passWord1.text = userPass;
    self.name = userName;
    self.pass = userPass;
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
