//
//  main.m
//  模型设计与KVC
//
//  Created by SunYang on 16/11/7.
//  Copyright © 2016年 SunYang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"
int main(int argc, const char * argv[]) {
    NSDictionary *JSONDict = @{@"firstName":@"阳",
                               @"lastName":@"孙",
                               @"age":@(25),
                               @"id":@"1002394",
                               @"address":@{
                                       @"id":@"13",
                                       @"description":@"北京"
                                       },
                               @"scores":@[@"80",@"85",@"75",@"90"]
                               };
    UserModel *userModel = [[UserModel alloc] initWithDict:JSONDict];
    NSLog(@"%@",userModel);
    return 0;
}
