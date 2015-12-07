//
//  ViewController.m
//  ZXTestBlock
//
//  Created by macmini on 15/12/4.
//  Copyright (c) 2015年 macmini. All rights reserved.
//

//Block就不是变量 而是类型
//表示返回值为空，参数为空的方法指针
typedef void (^Block5) (void);

//声明的时候参数可以不写参数名
typedef void (^Block6) (int, int);

typedef int (^Block7) (int, int);


#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     * block 简单使用
    // 1. 学习block
    //定义一个block  名字block1 参数void
    //如果参数为空  void可以不写   void写上之后更标准
    void (^block1) (void) = NULL;
    
    //给block赋值 等号右边是一个方法体
    block1 = ^(void){
        NSLog(@"你好！");
    };
    //调用block;
    block1();
    
    //2. 左边是声明,右边是一个方法体
    void (^block2) (int a,int b) = ^(int a,int b){
        NSLog(@"--->%d", a + b);
    };
    block2(3,5);
    //3. 返回int
    int (^block3) (int a, int b) = ^(int a,int b){
        return (a +b);
    };
    block3(4,6);
    
    NSLog(@"a+b=%d",block3(4,6));

    */
    
    
    /*
     * 重点理解
    //默认情况：局部变量sum在block中是只读的，只能取值不能赋值
    //如果添加__block 在block中可以对局部变量赋值
    
    __block int sum = 0;
    NSLog(@"--->%p", &sum);
    void (^block4) (int a, int b) = ^(int a, int b){
        //对于基本数据类型来说
        //如果使用没加__block的局部变量  block中是对值的copy
        //如果添加了__block 使用的就是局部变量本身
        NSLog(@"-->%p", &sum);
        sum = a + b;
    };
    
    block4(3, 5);
    NSLog(@"--->%d", sum);
    
     */
    
    
    /*
     
     //基本数据类型和非基本数据类型 使用局部变量的区别
     //默认情况：
     //基本数据类型：拷贝的是值， 在外部更改值对内部没有影响
     非基本数据类型：拷贝的是指针，拷贝的指针还是指向原来的对象，在外部更改对象的内容，对block内也有影响
     //添加__block之后 就不会再拷贝
     
     __block int sum = 0;
     //NSLog(@"--->%p", &sum);
     void (^block4) (int a, int b) = ^(int a, int b){
     //对于基本数据类型来说
     //如果使用没加__block的局部变量  block中是对值的copy
     //如果添加了__block 使用的就是局部变量本身
     NSLog(@"-->%d", sum);
     //sum = a + b;
     };
     sum = 2;
     block4(3, 5);
     
     __block NSString *name = nil;
     NSLog(@"--.%p", &name);
     void (^setName) (void) = NULL;
     setName = ^(void) {
     //name = @"张三";
     NSLog(@"--.>%p", &name);
     NSLog(@"--.>%@", name);
     };
     name = @"ls";
     setName();
     NSLog(@"---》%@", name);
     
     */
    //实现的时候参数需要写参数名，实现的时候参数是要用的，如果不写参数名没意义
    
    
//    Block5 test = ^(void) {
//        NSLog(@"Block5类型的block");
//    };
//    
//    test();
//    
//    //实现的时候参数需要写参数名，实现的时候参数是要用的，如果不写参数名没意义
//    Block6 test2 = ^(int b, int c) {
//        NSLog(@"-->%d", b);
//    };
//    test2(5, 1);
//    
//    Block7 test3 = ^(int a, int b) {
//        return a + b;
//    };
//    NSLog(@"得到的结果是：%d", test3(1, 2));
    
//    Block6 test6 = ^(int a, int b){
//        NSLog(@"a + b = %d",a + b);
//    };
//    
//    test6(5,8);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn:(UIButton *)sender {
}
@end
