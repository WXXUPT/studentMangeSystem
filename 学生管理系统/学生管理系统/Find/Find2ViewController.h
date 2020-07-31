//
//  Find2ViewController.h
//  学生管理系统
//
//  Created by 王旭 on 2020/7/30.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Find2ViewController : UIViewController

<UITableViewDelegate , UITableViewDataSource>
@property UITableView* tableView;
@property UILabel* informationLabel;
@property NSArray* nameArr;
@property NSArray* classArr;
@property NSArray* scoreArr;
@end

NS_ASSUME_NONNULL_END
