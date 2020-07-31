//
//  AddViewController.h
//  学生管理系统
//
//  Created by 王旭 on 2020/7/29.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"
NS_ASSUME_NONNULL_BEGIN
@class Student;
@protocol AddDelegate <NSObject>

- (void)pass: (Student *)student;

@end
@interface AddViewController : UIViewController

@property UITextField* stuName;
@property UITextField* stuClass;
@property UITextField* stuScore;
@property NSMutableArray* nameArr;
@property NSMutableArray* classArr;
@property NSMutableArray* scoreArr;
@property id <AddDelegate> AddDelegate;
@end

NS_ASSUME_NONNULL_END
