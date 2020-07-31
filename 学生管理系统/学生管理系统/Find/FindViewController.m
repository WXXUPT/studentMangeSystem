//
//  FindViewController.m
//  学生管理系统
//
//  Created by 王旭 on 2020/7/29.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "FindViewController.h"
#import "Find2ViewController.h"
@interface FindViewController ()

@end

@implementation FindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage* backGround = [UIImage imageNamed:@"gogogo2.jpg"];
    self.view.layer.contents = (id) backGround.CGImage;
    
    UIImageView* user = [UIImageView new];
    user.frame = CGRectMake(10, 0, 50, 50);
    user.image = [UIImage imageNamed:@"tx3.png"];
    
    _stuName = [[UITextField alloc] initWithFrame:CGRectMake(52, 310, 300, 53)];
    _stuName.delegate = self;
    [_stuName setBorderStyle:UITextBorderStyleRoundedRect];
    _stuName.leftView = user;
    _stuName.leftViewMode = UITextFieldViewModeAlways;
    _stuName.placeholder = @"   请输入学生姓名...";
    [self.view addSubview:_stuName];
    
     UIButton* sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
     [sureBtn setImage:[UIImage imageNamed:@"sure3.png"] forState:UIControlStateNormal];
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
    if (_stuName.text.length <= 0) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"你是不是又觉得你很幽默？" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* sorry = [UIAlertAction actionWithTitle:@"对不起" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:sorry];
        [self presentViewController:alert animated:YES completion:nil];
    } else {
        int i;
        for (i = 0; i < _nameArr.count; i++) {
            if ([_nameArr[i] isEqualToString:_stuName.text])
                break;
        }
        if (i == _nameArr.count) {
            UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"你是不是又觉得你很幽默？" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction* sorry = [UIAlertAction actionWithTitle:@"对不起" style:UIAlertActionStyleCancel handler:nil];
            [alert addAction:sorry];
            [self presentViewController:alert animated:YES completion:nil];
        } else {
            Find2ViewController* find2 = [Find2ViewController new];
            find2.nameArr = [[NSArray alloc] init];
            find2.classArr = [NSArray new];
            find2.scoreArr = [NSArray new];
            
            find2.nameArr = @[_nameArr[i]] ;
            find2.classArr = @[_classArr[i]];
            find2.scoreArr = @[_scoreArr[i]];
            find2.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:find2 animated:YES completion:nil];
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
