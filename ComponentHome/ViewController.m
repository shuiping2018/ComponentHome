//
//  ViewController.m
//  ComponentHome
//
//  Created by 王水平 on 2018/4/13.
//  Copyright © 2018年 王水平. All rights reserved.
//

#import "ViewController.h"
#import <ComponentHome_Category/CTMediator+Home.h>
#import <ComponentLogin_Category/CTMediator+ComponentLogin.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
//    UIViewController * vc = [[CTMediator sharedInstance] ComponentLogin_loginViewControllerWithCallback:nil];
    
    UIViewController * vc = [[CTMediator sharedInstance] Home_homeViewControllerWithCallback:nil];
    //    UIViewController * vc = [[[Targets_ComponentLogin alloc] init] Action_viewController:nil];
    UINavigationController * nc = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nc animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
