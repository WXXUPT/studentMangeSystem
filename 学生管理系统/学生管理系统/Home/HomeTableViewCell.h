//
//  HomeTableViewCell.h
//  学生管理系统
//
//  Created by 王旭 on 2020/7/28.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeTableViewCell : UITableViewCell

@property (nonatomic , strong) UILabel* nameLabel;
@property (nonatomic , strong) UILabel* classLabel;
@property (nonatomic , strong) UILabel* scoreLabel;
@end

NS_ASSUME_NONNULL_END
