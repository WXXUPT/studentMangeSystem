//
//  HomeTableViewCell.m
//  学生管理系统
//
//  Created by 王旭 on 2020/7/28.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "HomeTableViewCell.h"

@implementation HomeTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _nameLabel = [UILabel new];
    _classLabel = [UILabel new];
    _scoreLabel = [UILabel new];
    
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_classLabel];
    [self.contentView addSubview:_scoreLabel];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    _nameLabel.frame = CGRectMake(25, 10, 80, 30);
    _nameLabel.font = [UIFont systemFontOfSize:18];
    _nameLabel.textColor = [UIColor whiteColor];
    
    _classLabel.frame = CGRectMake(160, 10, 100, 30);
    _classLabel.font = [UIFont systemFontOfSize:18];
    _classLabel.textColor = [UIColor whiteColor];
    
    _scoreLabel.frame = CGRectMake(330, 10, 60, 30);
    _scoreLabel.font = [UIFont systemFontOfSize:18];
    _scoreLabel.textColor = [UIColor whiteColor];
}
@end
