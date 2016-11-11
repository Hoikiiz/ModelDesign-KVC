//
//  main.m
//  模型设计与KVC_普通状态
//
//  Created by SunYang on 16/11/9.
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
                                       @"id":@"01",
                                       @"description":@"北京"
                                       }
                               };
    UserModel *userModel = [[UserModel alloc] initWithDict:JSONDict];
    NSLog(@"%@",userModel);
    return 0;
}
