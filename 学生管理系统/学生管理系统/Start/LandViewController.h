//
//  LandViewController.h
//  学生管理系统
//
//  Created by 王旭 on 2020/7/28.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LandViewController : UIViewController
<UITableViewDelegate , UITableViewDataSource>
@property UITextField* userLand1;
@property UITextField* passWord1;
@property (nonatomic , strong) NSString* name;
@property (nonatomic , strong) NSString* pass;
@end

NS_ASSUME_NONNULL_END
