//
//  LsTabBarController.m
//  商城
//
//  Created by wei on 16/6/16.
//  Copyright © 2016年 威. All rights reserved.
//

#import "LsTabBarController.h"
#import "LsNavigationController.h"
#import "LsModel.h"

@interface LsTabBarController ()

@property (nonatomic,strong) NSArray *arrxxx;
@end

@implementation LsTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSMutableArray *array = [NSMutableArray arrayWithCapacity:self.arrxxx.count];
    
//    NSLog(@"%ld",self.arrxxx.count);
//    [self.arrxxx enumerateObjectsUsingBlock:^(LsModel *mod, NSUInteger idx, BOOL * _Nonnull stop) {
//        
//        Class viewControllerClass = NSClassFromString(mod.viewController);
//        
//        UIViewController *viewControll = [[viewControllerClass alloc]init];
//        
//        viewControll.title = mod.viewControllertitle;
//        
//        viewControll.tabBarItem.image = [[UIImage imageNamed:mod.viewControllerImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        
//        viewControll.tabBarItem.selectedImage = [[UIImage imageNamed:mod.viewControllerSelectImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
//        
//        LsNavigationController *navVC = [[LsNavigationController alloc] initWithRootViewController:viewControll];
//        
//        [array addObject:navVC];
//        
//    }];
    
    
    
    
    NSMutableArray *axxx = [NSMutableArray arrayWithCapacity:self.arrxxx.count];
    
    for (int i = 0; i < self.arrxxx.count; i++) {
        LsModel *model = self.arrxxx[i];
        
        NSString *str = [NSString stringWithFormat:@"%@",model.viewController];
        
        Class viewControllerClass = NSClassFromString(str);
        
        UIViewController *viewController = [[viewControllerClass alloc] init];
        //设置title
        viewController.title = model.viewControllertitle;
        ///设置未选中图片
        viewController.tabBarItem.image = [[UIImage imageNamed:model.viewControllerImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        ///设置选中图片
        viewController.tabBarItem.selectedImage = [[UIImage imageNamed:model.viewControllerSelectImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        LsNavigationController *nav = [[LsNavigationController alloc]initWithRootViewController:viewController];
    
        [axxx addObject:nav];
    
}

    self.viewControllers = axxx;
    self.selectedIndex = 0;
    
    //    self.viewControllers = array;
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{
                                                        NSFontAttributeName : [UIFont systemFontOfSize:10.0],
                                                       NSForegroundColorAttributeName:[UIColor grayColor]
                                                       } forState:UIControlStateNormal];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{
                                                        
                                                        NSForegroundColorAttributeName:[UIColor colorWithRed:65/255.0 green:179/255.0 blue:241/255.0 alpha:1.0]
                                                        } forState:UIControlStateSelected];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSArray *)arrxxx{
    if (!_arrxxx) {
        _arrxxx = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"ViewConreollers" ofType:@"plist"]];
        
        NSMutableArray *arr = [NSMutableArray array];
        
        for (NSDictionary *dic in _arrxxx) {
            LsModel *mod = [LsModel ViewAttributeName:dic];
            
            [arr addObject:mod];
        }
        _arrxxx = arr;
    }
    return _arrxxx;
}

@end
