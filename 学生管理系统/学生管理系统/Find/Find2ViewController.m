//
//  Find2ViewController.m
//  学生管理系统
//
//  Created by 王旭 on 2020/7/30.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "Find2ViewController.h"
#import "HomeTableViewCell.h"
@interface Find2ViewController ()

@end

@implementation Find2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    NSLog(@" %@",  [_nameArr objectAtIndex:0]);

    UIImage* backGround = [UIImage imageNamed:@"gogogo2.jpg"];
    self.view.layer.contents = (id) backGround.CGImage;

    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 400, 414, 500) style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor clearColor];

    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    _informationLabel = [[UILabel alloc] init];
    _informationLabel.text = @"您所查找的学生信息为:";
    _informationLabel.frame = CGRectMake(20, 320, 300, 100);
    _informationLabel.font = [UIFont systemFontOfSize:20];
    _informationLabel.textColor = [UIColor whiteColor];
//    _pLabel.backgroundColor = [UIColor clearColor];

    [_tableView registerClass:[HomeTableViewCell class] forCellReuseIdentifier:@"find"];
    [self.view addSubview:_tableView];
    [self.view addSubview:_informationLabel];
    
    UIButton* back = [UIButton buttonWithType:UIButtonTypeCustom];
    [back setImage:[UIImage imageNamed:@"返回2.png"] forState:UIControlStateNormal];
    back.frame = CGRectMake(172, 490, 50, 50);
    [back addTarget:self action:@selector(pressBack) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:back];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HomeTableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"find" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[HomeTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"find"];
    }
    cell.nameLabel.text = [_nameArr objectAtIndex:0];
    cell.classLabel.text = [_classArr objectAtIndex:0];
    cell.scoreLabel.text = [_scoreArr objectAtIndex:0];
    cell.backgroundColor = [UIColor clearColor];
    return cell;
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
