//
//  ChangeViewController.h
//  学生管理系统
//
//  Created by 王旭 on 2020/7/29.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"
NS_ASSUME_NONNULL_BEGIN
@class Student;
@protocol ChangeDelegate <NSObject>

- (void)Changep1:(NSMutableArray* )nameArr p2:(NSMutableArray* )classArr p3:(NSMutableArray*) scoreArr;

@end

@interface ChangeViewController : UIViewController
<UITableViewDelegate , UITableViewDataSource >
@property UITextField* stuName;
@property UITextField* stuClass;
@property UITextField* stuScore;
@property NSMutableArray* nameArr;
@property NSMutableArray* classArr;
@property NSMutableArray* scoreArr;
@property int i;
@property id<ChangeDelegate> ChangeDelegate;
@end

NS_ASSUME_NONNULL_END
