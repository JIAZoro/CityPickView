//
//  CityPickView.h
//  cityPickView
//
//  Created by jia on 16/10/20.
//  Copyright © 2016年 Jiajingwei. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^confirmBlock)(NSString *proVince,NSString *city,NSString *area);
typedef void(^selectOver)(NSString *proVince,NSString *city,NSString *area);
typedef void(^cancelBlock)();

@interface CityPickView : UIView <UIPickerViewDelegate,UIPickerViewDataSource>

@property (copy,nonatomic) NSString *province;
@property (copy,nonatomic) NSString *city;
@property (copy,nonatomic) NSString *area;

@property (copy,nonatomic) NSString *address;

@property (nonatomic,assign) BOOL toolshidden;


@property (copy,nonatomic) confirmBlock confirmblock;
@property (copy,nonatomic) cancelBlock cancelblock;
@property (copy,nonatomic) selectOver doneBlock;

@end
