//
//  LsModel.m
//  商城
//
//  Created by wei on 16/6/16.
//  Copyright © 2016年 威. All rights reserved.
//

#import "LsModel.h"

@implementation LsModel




+ (instancetype)ViewAttributeName:(NSDictionary *)dic{

    LsModel *model = [[LsModel alloc]init];
    
//    model.viewController = dic[@"viewController"];
//    model.viewControllertitle = dic[@"viewControllertitle"];
//    model.viewControllerImage = dic[@"viewControllerImage"];
//    model.viewControllerSelectImage = dic[@"viewControllerSelectImage"];
    [model setValuesForKeysWithDictionary:dic];
 
    return model;
}


@end
