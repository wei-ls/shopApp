//
//  LsModel.h
//  商城
//
//  Created by wei on 16/6/16.
//  Copyright © 2016年 威. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LsModel : NSObject

@property (nonatomic,copy) NSString *viewController;

@property (nonatomic,copy) NSString *viewControllerImage;

@property (nonatomic,copy) NSString *viewControllerSelectImage;

@property (nonatomic,copy) NSString *viewControllertitle;



+ (instancetype)ViewAttributeName:(NSDictionary *)dic;

@end

