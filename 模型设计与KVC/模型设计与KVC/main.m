//
//  main.m
//  模型设计与KVC
//
//  Created by SunYang on 16/11/7.
//  Copyright © 2016年 SunYang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NormalUserModel.h"





int main(int argc, const char * argv[]) {
    NSDictionary *JSONDict = @{@"firstName":@"阳",
                               @"lastName":@"孙",
                               @"age":@(25),
                               @"id":@"1002394",
                               @"address":@{
                                       @"id":@"13",
                                       @"description":@"北京"
                                       }
                               };
    NormalUserModel *userModel_1 = [[NormalUserModel alloc] initWithDict:JSONDict];
    NSLog(@"%@",userModel_1);
    NSLog(@"%@",userModel_1.fullName);
    userModel_1.nameType = NormalUserNameTypeChinese;
    NSLog(@"%@",userModel_1.fullName);
    return 0;
}
