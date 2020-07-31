//
//  HomeViewController.h
//  学生管理系统
//
//  Created by 王旭 on 2020/7/28.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddViewController.h"
#import "ChangeViewController.h"
#import "FindViewController.h"
#import "Student.h"

NS_ASSUME_NONNULL_BEGIN
@class Student;
@interface HomeViewController : UIViewController
<UITableViewDelegate , UITableViewDataSource , AddDelegate , ChangeDelegate>
@property UITableView *tableView;
@property NSMutableArray *nameArr;
@property NSMutableArray *scoreArr;
@property NSMutableArray *classArr;
@property NSMutableArray *stuArr;

@end

NS_ASSUME_NONNULL_END
