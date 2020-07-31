//
//  RegisterViewController.h
//  学生管理系统
//
//  Created by 王旭 on 2020/7/28.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol SecondViewControllerDelegate <NSObject>
- (void)changeValue:(NSString *) userName and:(NSString*) userPass;//要交给代理的值是NSString型的(根据自己需要传值的类型来定)
@end

@interface RegisterViewController : UIViewController
<UITableViewDataSource , UITableViewDelegate>

@property UITextField* userLand;
@property UITextField* passWord;

@property (nonatomic , assign) id<SecondViewControllerDelegate> delegate;
@property (nonatomic , strong) NSString* userName;
@property (nonatomic , strong) NSString* userPass;
@end

NS_ASSUME_NONNULL_END
