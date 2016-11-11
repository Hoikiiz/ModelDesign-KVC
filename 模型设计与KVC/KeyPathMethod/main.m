//
//  main.m
//  KeyPathMethod
//
//  Created by SunYang on 16/11/9.
//  Copyright © 2016年 SunYang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"

int main(int argc, const char * argv[]) {
    NSMutableArray *userArray = [NSMutableArray arrayWithCapacity:10];
    for (int i = 0; i < 10; i ++) {
        NSDictionary *JSONDict = @{@"firstName":@"阳",
                                   @"lastName":@"孙",
                                   @"age":@(arc4random() % 30 + 20),
                                   @"id":@"1002394",
                                   @"address":@{
                                           @"id":@"13",
                                           @"description":@"北京"
                                           }
                                   };
        UserModel *userModel = [[UserModel alloc] initWithDict:JSONDict];
        [userArray addObject:userModel];
    }
    NSLog(@"Age list is %@",userArray);
    NSLog(@"Average age is %@",[userArray valueForKeyPath:@"@avg.age"]);
    NSLog(@"Min age is %@",[userArray valueForKeyPath:@"@min.age"]);
    NSLog(@"Max age is %@",[userArray valueForKeyPath:@"@max.age"]);
    return 0;
}
