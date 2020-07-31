//
//  StartViewController.m
//  学生管理系统
//
//  Created by 王旭 on 2020/7/28.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "StartViewController.h"
#import "LandViewController.h"
@interface StartViewController ()

@end

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage* backGroud = [UIImage imageNamed:@"pengpengpeng.jpg"];
    self.view.layer.contents = (id) backGroud.CGImage;
    
    NSTimer* _timer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(goLand) userInfo:nil repeats:NO];
}
- (void) goLand
{
    LandViewController* land = [LandViewController new];
    UIWindow* window = self.view.window;
    
    window.rootViewController = land;
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
