//
//  DeleteViewController.m
//  学生管理系统
//
//  Created by 王旭 on 2020/7/29.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "DeleteViewController.h"

@interface DeleteViewController ()

@end

@implementation DeleteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage* backGround = [UIImage imageNamed:@"gogogo2.jpg"];
    self.view.layer.contents = (id) backGround.CGImage;
    
    UIImageView* user = [UIImageView new];
//    UIImageView* pass = [UIImageView new];
//    UIImageView* score = [UIImageView new];
    
    user.frame = CGRectMake(10, 0, 50, 50);
//    pass.frame = CGRectMake(10, 0, 50, 50);
//    score.frame = CGRectMake(10, 0, 50, 50);
    
    user.image = [UIImage imageNamed:@"tx3.png"];
//    pass.image = [UIImage imageNamed:@"pass2.png"];
//    score.image = [UIImage imageNamed:@"文件.png"];
    
    _stuName = [[UITextField alloc] initWithFrame:CGRectMake(52, 310, 300, 53)];
//    _stuClass = [[UITextField alloc] initWithFrame:CGRectMake(52, 350, 300, 53)];
//    _stuScore = [[UITextField alloc] initWithFrame:CGRectMake(52, 420, 300, 53)];
    
    _stuName.delegate = self;
//    _stuClass.delegate = self;
//    _stuScore.delegate = self;
    
    [_stuName setBorderStyle:UITextBorderStyleRoundedRect];
    _stuName.leftView = user;
    _stuName.leftViewMode = UITextFieldViewModeAlways;
    
//    [_stuClass setBorderStyle:UITextBorderStyleRoundedRect];
//    _stuClass.leftView = pass;
//    _stuClass.leftViewMode = UITextFieldViewModeAlways;
//
//    [_stuScore setBorderStyle:UITextBorderStyleRoundedRect];
//    _stuScore.leftView = score;
//    _stuScore.leftViewMode = UITextFieldViewModeAlways;
    
    _stuName.placeholder = @"   请输入学生姓名...";
//    _stuClass.placeholder = @"   请输入学生班级...";
//    _stuScore.placeholder = @"   请输入学生分数...";

    [self.view addSubview:_stuName];
//    [self.view addSubview:_stuClass];
//    [self.view addSubview:_stuScore];
    
    UIButton* sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [sureBtn setImage:[UIImage imageNamed:@"sure2.png"] forState:UIControlStateNormal];
    sureBtn.frame = CGRectMake(122, 480, 50, 50);
    [sureBtn addTarget:self action:@selector(pressSure) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:sureBtn];
    
    UIButton* backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setImage:[UIImage imageNamed:@"返回3.png"] forState:UIControlStateNormal];
    backBtn.frame = CGRectMake(222, 480, 50, 50);
    [backBtn addTarget:self action:@selector(pressBack) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:backBtn];
}
- (void) pressSure
{
    if (_stuName.text.length <= 0 ) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"啥都不输你让我干啥" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* sorry = [UIAlertAction actionWithTitle:@"对不起" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:sorry];
        [self presentViewController:alert animated:YES completion:nil];
    } else {
        int i;
        for (i = 0; i < _nameArr.count; i++) {
            if ([_nameArr[i] isEqualToString:_stuName.text]) {
                UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"想好了？" preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction* sure =  [UIAlertAction actionWithTitle:@"势必" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [_nameArr removeObjectAtIndex:i];
                    [_classArr removeObjectAtIndex:i];
                    [_scoreArr removeObjectAtIndex:i];
                    [_DeleteDelegate deletep1:_nameArr p2:_classArr p3:_scoreArr];
                    [self dismissViewControllerAnimated:YES completion:nil];
                }];
               
                UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"等会儿" style:UIAlertActionStyleCancel handler:nil];
                [alert addAction:sure];
                [alert addAction:cancel];
                [self presentViewController:alert animated:YES completion:nil];
            }
        }
        if (i == _nameArr.count) {
            UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"你是不是觉得你很幽默？" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction* sorry = [UIAlertAction actionWithTitle:@"对不起" style:UIAlertActionStyleCancel handler:nil];
            [alert addAction:sorry];
            [self presentViewController:alert animated:YES completion:nil];
        }
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
- (void) pressBack
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
