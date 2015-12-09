//
//  MyAlertView.m
//  ZXTestBlock
//
//  Created by macmini on 15/12/9.
//  Copyright © 2015年 macmini. All rights reserved.
//

#import "MyAlertView.h"

@implementation MyAlertView

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor orangeColor];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame = CGRectMake(0, 0, 100, 100);
        button.backgroundColor = [UIColor blueColor];
        button.tag = 1;
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        
    }
    return self;
}

-(void)buttonClick:(UIButton *)butt
{
//    if ([self.MyAlertViewDelegate respondsToSelector:@selector(MyAlertView:button:)]) {
//        [self.MyAlertViewDelegate MyAlertView:self button:butt];
//    }
    _alertViewBlock(butt);
}

@end
