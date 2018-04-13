//
//  Target_Home.m
//  ComponentHome
//
//  Created by 王水平 on 2018/4/13.
//  Copyright © 2018年 王水平. All rights reserved.
//

#import "Target_Home.h"
#import "HomeViewController.h"

@implementation Target_Home

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    HomeViewController *viewController = [[HomeViewController alloc] init];
    return viewController;
}

@end
