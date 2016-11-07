//
//  AddressModel.m
//  模型设计与KVC
//
//  Created by SunYang on 16/11/7.
//  Copyright © 2016年 SunYang. All rights reserved.
//

#import "AddressModel.h"

@implementation AddressModel
- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        self.ID = dict[@"id"];
        self.desc = dict[@"description"];
    }
    return self;
}

- (NSString *)description {
    return self.desc;
}
@end
