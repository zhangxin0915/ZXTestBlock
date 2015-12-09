//
//  MyAlertView.h
//  ZXTestBlock
//
//  Created by macmini on 15/12/9.
//  Copyright © 2015年 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyAlertView;
@protocol MyAlertViewDelegate <NSObject>

- (void)MyAlertView:(MyAlertView *)MyAlertView button:(UIButton *)button;

@end
@interface MyAlertView : UIView

//delegate的描述不能用retain 而用assign
//如果用retain会导致循环引用，无法被释放，导致内存泄露
@property(nonatomic,assign) id<MyAlertViewDelegate> MyAlertViewDelegate;

//局部变量、方法形参和block存储在栈上
//当方法结束 就会被释放
//全局使用block要copy到堆上 而且在dealloc中加上release

@property(nonatomic,copy) void(^alertViewBlock)(UIButton *button);

@end
