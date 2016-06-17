//
//  LsMyselfController.m
//  商城
//
//  Created by wei on 16/6/16.
//  Copyright © 2016年 威. All rights reserved.
//

#import "LsMyselfController.h"
#import "LsTopimage.h"

@interface LsMyselfController ()



@end

@implementation LsMyselfController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LsTopimage *topimageView = [[LsTopimage alloc]initWithFrame:self.view.bounds];
    
    [self.view addSubview:topimageView];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
