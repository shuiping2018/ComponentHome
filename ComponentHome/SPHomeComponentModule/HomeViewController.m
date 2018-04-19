//
//  HomeViewController.m
//  ComponentHome
//
//  Created by 王水平 on 2018/4/13.
//  Copyright © 2018年 王水平. All rights reserved.
//

#import "HomeViewController.h"
#import <ComponentLogin_Category/CTMediator+ComponentLogin.h>

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self initButton];
}

- (void)initButton
{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundColor:[UIColor clearColor]];
    btn.frame = CGRectMake(0, 0, 100, 50);
    btn.center = self.view.center;
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:20];
    [btn addTarget:self action:@selector(clickedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)clickedBtn:(UIButton *)btn
{
    NSLog(@"去登录");
    
//    UIViewController * vc = [[CTMediator sharedInstance] ComponentLogin_loginViewControllerWithCallback:nil];
    UIViewController * vc = [[CTMediator sharedInstance] ComponentLogin_NewLoginViewControllerWithCallback:^(NSDictionary *info) {
        
        UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        }];
        
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:info[@"accout"] message:info[@"password"] preferredStyle:UIAlertControllerStyleAlert];
        [alertController addAction:confirmAction];
        [self presentViewController:alertController animated:YES completion:nil];
        
    }];
    
    UINavigationController * nc = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nc animated:YES completion:^{}];
}

@end
