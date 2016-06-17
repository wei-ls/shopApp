//
//  LsTopimage.m
//  商城
//
//  Created by wei on 16/6/16.
//  Copyright © 2016年 威. All rights reserved.
//

#import "LsTopimage.h"
#import "Masonry.h"




@implementation LsTopimage

- (instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    if (self) {
        
        [self addSubview:self.imageView];
        [self addSubview:self.Login];
        [self addSubview:self.eroll];
        [self layout];
    }
    return self;
}





- (UIImageView *)imageView{
    if (!_imageView) {
        _imageView = [[UIImageView alloc]init];
        _imageView.image = [UIImage imageNamed:@"我的背景"];
    }
    return _imageView;
}

- (UIButton *)Login{
    if (!_Login) {
        _Login = [UIButton buttonWithType:UIButtonTypeSystem];
        [_Login setTitle:@"登录" forState:UIControlStateNormal];
        _Login.titleLabel.font = [UIFont systemFontOfSize:30];
        [_Login setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    return _Login;
}

- (UIButton *)eroll{
    if (!_eroll) {
        _eroll = [UIButton buttonWithType:UIButtonTypeSystem];
        [_eroll setTitle:@"注册" forState:UIControlStateNormal];
        [_eroll setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _eroll.titleLabel.font = [UIFont systemFontOfSize:30];
        
    }
    return _eroll;
}

- (UITableView *)tabview{
    if (!_tabview) {
        _tabview = [[UITableView alloc]init];
    }
    return _tabview;
}








- (void)layout{
    
    __weak typeof(self)weakSelf = self;
    
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(weakSelf.mas_top).offset(10);
        make.centerX.mas_equalTo(weakSelf);
        make.height.mas_equalTo(250);
    }];
    
    [self.Login mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(weakSelf.imageView.mas_centerY);
        make.left.equalTo(weakSelf.imageView.mas_left).offset(215);
        make.width.mas_equalTo(67.5);
    }];
    
    
    [self.eroll mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.centerY.mas_equalTo(weakSelf.imageView.mas_centerY);
        make.right.equalTo(weakSelf.imageView.mas_right).offset(-215);
        make.left.equalTo(weakSelf.Login.mas_right).offset(185);
        
        
    }];
    
    
}



@end
