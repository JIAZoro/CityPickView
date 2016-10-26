//
//  ViewController.m
//  CityPickViewDemo
//
//  Created by jjw on 16/10/25.
//  Copyright © 2016年 jiajingwei. All rights reserved.
//

#import "ViewController.h"
#import "CityPickView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 300, 30)];
    textField.backgroundColor = [UIColor lightGrayColor];
    textField.center = self.view.center;
    [self.view addSubview:textField];
    
    
    CityPickView *cityPickView = [[CityPickView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 256)];
    cityPickView.address = @"浙江省-杭州市-余杭区";  //设置默认城市，弹出之后显示的是这个
    cityPickView.backgroundColor = [UIColor whiteColor];//设置背景颜色
    cityPickView.toolshidden = NO; //默认是显示的，如不需要，toolsHidden设置为yes
    //每次滚动结束都会返回值
    cityPickView.confirmblock = ^(NSString *proVince,NSString *city,NSString *area){
        textField.text = [NSString stringWithFormat:@"%@-%@-%@",proVince,city,area];
    };
    //点击取消按钮回调
    cityPickView.doneBlock = ^(NSString *proVince,NSString *city,NSString *area){
        textField.text = [NSString stringWithFormat:@"%@-%@-%@",proVince,city,area];
        [self.view endEditing:YES];//使键盘消失
    };
    //点击取消按钮回调
    cityPickView.cancelblock = ^(){
        [self.view endEditing:YES];
    };
    
    
    textField.inputView = cityPickView;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

@end
