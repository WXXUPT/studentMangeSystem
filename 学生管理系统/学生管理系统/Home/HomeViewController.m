//
//  HomeViewController.m
//  学生管理系统
//
//  Created by 王旭 on 2020/7/28.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTableViewCell.h"
#import "AddViewController.h"
#import "DeleteViewController.h"
#import "ChangeViewController.h"
#import "FindViewController.h"
#import "LandViewController.h"
//#import "StudentModel.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage* backGround = [UIImage imageNamed:@"gogogo2.jpg"];
    self.view.layer.contents = (id) backGround.CGImage;
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, 414, 550) style:UITableViewStylePlain];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[HomeTableViewCell class] forCellReuseIdentifier:@"home"];
    
    [self.view addSubview:_tableView];
    self.tableView.backgroundColor = [UIColor clearColor];
    
    UIButton* btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnAdd setTitle:@"增加" forState:UIControlStateNormal];
    btnAdd.titleLabel.font = [UIFont systemFontOfSize:20];
    btnAdd.backgroundColor = [UIColor clearColor];
    btnAdd.tintColor = [UIColor whiteColor];
    btnAdd.layer.masksToBounds = YES;
    btnAdd.layer.borderWidth = 1;
    btnAdd.layer.cornerRadius = 5;
    btnAdd.layer.borderColor = [UIColor whiteColor].CGColor;
    btnAdd.frame = CGRectMake(70, 630, 100, 40);
    [btnAdd addTarget:self action:@selector(pressAdd) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btnAdd];
    
    UIButton* btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnDelete setTitle:@"删除" forState:UIControlStateNormal];
    btnDelete.titleLabel.font = [UIFont systemFontOfSize:20];
    btnDelete.backgroundColor = [UIColor clearColor];
    btnDelete.tintColor = [UIColor whiteColor];
    btnDelete.layer.masksToBounds = YES;
    btnDelete.layer.borderWidth = 1;
    btnDelete.layer.cornerRadius = 5;
    btnDelete.layer.borderColor = [UIColor whiteColor].CGColor;
    btnDelete.frame = CGRectMake(230, 630, 100, 40);
    [btnDelete addTarget:self action:@selector(pressDelete) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btnDelete];
    
    UIButton* btnChange = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnChange setTitle:@"修改" forState:UIControlStateNormal];
    btnChange.titleLabel.font = [UIFont systemFontOfSize:20];
    btnChange.backgroundColor = [UIColor clearColor];
    btnChange.tintColor = [UIColor whiteColor];
    btnChange.layer.masksToBounds = YES;
    btnChange.layer.borderWidth = 1;
    btnChange.layer.cornerRadius = 5;
    btnChange.layer.borderColor = [UIColor whiteColor].CGColor;
    btnChange.frame = CGRectMake(70, 710, 100, 40);
    [btnChange addTarget:self action:@selector(pressChange) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btnChange];
    
    UIButton* btnFind = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnFind setTitle:@"查找" forState:UIControlStateNormal];
    btnFind.titleLabel.font = [UIFont systemFontOfSize:20];
    btnFind.backgroundColor = [UIColor clearColor];
    btnFind.tintColor = [UIColor whiteColor];
    btnFind.layer.masksToBounds = YES;
    btnFind.layer.borderWidth = 1;
    btnFind.layer.cornerRadius = 5;
    btnFind.layer.borderColor = [UIColor whiteColor].CGColor;
    btnFind.frame = CGRectMake(230, 710, 100, 40);
    [btnFind addTarget:self action:@selector(pressFind) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btnFind];
    
    UIButton* btnExit = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnExit setImage:[UIImage imageNamed:@"退出.png"] forState:UIControlStateNormal];
    btnExit.frame = CGRectMake(176, 790, 50, 50);
    [btnExit addTarget:self action:@selector(pressExit) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btnExit];
    
    _nameArr = [NSMutableArray new];
    _classArr = [NSMutableArray new];
    _scoreArr = [NSMutableArray new];
//    StudentModel * student = [[StudentModel alloc] init];
//    student.nameStr = @"213";
//    student.classnumber = 123;
//    [_nameArr addObject:student];
  
    
    [_nameArr addObject:@"张三"];
    [_nameArr addObject:@"李四"];
    [_nameArr addObject:@"王五"];
    
    [_classArr addObject:@"计科1901"];
    [_classArr addObject:@"计科1902"];
    [_classArr addObject:@"计科1903"];
    
    [_scoreArr addObject:@"100"];
    [_scoreArr addObject:@"100"];
    [_scoreArr addObject:@"100"];

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _nameArr.count;
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
    HomeTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"home" forIndexPath:indexPath];
    cell.nameLabel.text = _nameArr[indexPath.row];
    cell.classLabel.text = _classArr[indexPath.row];
    cell.scoreLabel.text = _scoreArr[indexPath.row];
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void) pressAdd
{
    AddViewController* add = [AddViewController new];
    add.AddDelegate = self;
        
    add.nameArr = _nameArr;
    add.classArr = _classArr;
    add.scoreArr = _scoreArr;
    [self presentViewController:add animated:YES completion:nil];
}
- (void)pass:(Student *)student
{
    [_nameArr addObject:student.nameStr];
    [_classArr addObject:student.classStr];
    [_scoreArr addObject:student.scoreStr];
    [_tableView reloadData];
}
- (void) pressDelete
{
    DeleteViewController* delete = [DeleteViewController new];
    
    delete.nameArr = _nameArr;
    delete.classArr = _classArr;
    delete.scoreArr = _scoreArr;
    
    delete.DeleteDelegate = self;
    [self presentViewController:delete animated:YES completion:nil];
}
- (void) deletep1:(NSMutableArray* )nameArr p2:(NSMutableArray* )classArr p3:(NSMutableArray*) scoreArr
{
    _nameArr = nameArr;
    _classArr = classArr;
    _scoreArr = scoreArr;
    [_tableView reloadData];
}
- (void) pressChange
{
    ChangeViewController* change = [ChangeViewController new];
    change.nameArr = _nameArr;
    change.classArr = _classArr;
    change.scoreArr = _scoreArr;
    
    change.ChangeDelegate = self;
    [self presentViewController:change animated:YES completion:nil];
}

- (void)Changep1:(NSMutableArray* )nameArr p2:(NSMutableArray* )classArr p3:(NSMutableArray*) scoreArr
{
    _nameArr = nameArr;
    _classArr = classArr;
    _scoreArr = scoreArr;
    [_tableView reloadData];
}
- (void) pressFind
{
    FindViewController* find = [FindViewController new];
    
    find.nameArr = _nameArr;
    find.classArr = _classArr;
    find.scoreArr = _scoreArr;
    
    [self presentViewController:find animated:YES completion:nil];
}
- (void) pressExit
{
    LandViewController* land = [LandViewController new];
    
    land.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:land animated:YES completion:nil];
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
