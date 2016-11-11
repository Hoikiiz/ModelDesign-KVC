//
//  NormalUserModel.m
//  模型设计与KVC
//
//  Created by SunYang on 16/11/7.
//  Copyright © 2016年 SunYang. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        self.firstName = dict[@"firstName"];
        self.lastName = dict[@"lastName"];
        self.age = [dict[@"age"] integerValue];
        self.ID = dict[@"id"];
        NSDictionary *addressJSONDict = dict[@"address"];
        self.address = [[AddressModel alloc] initWithDict:addressJSONDict];
    }
    return self;
}

- (NSString *)fullName {
    switch (self.nameType) {
        case 1:
            return [NSString stringWithFormat:@"%@ %@",self.firstName, self.lastName];
            break;
        case 2:
            return [NSString stringWithFormat:@"%@ %@",self.lastName, self.firstName];
            break;
        default:
            return [NSString stringWithFormat:@"%@ %@",self.firstName, self.lastName];
            break;
    }
}

- (NSString *)description {
    return [NSString stringWithFormat:@"\nFirstname is %@,\nLastName is %@,\nAge is %ld,\nID is %@,\nAddress is %@\n",self.firstName,self.lastName,self.age,self.ID,self.address];
}


- (BOOL)isEqual:(id)object {
    if ([object isKindOfClass:[self class]]) {
        UserModel *userModel = (UserModel *)object;
        return [self.ID isEqualToString:userModel.ID];
    } else {
        return NO;
    }
    
}

- (NSUInteger)hash {
    return self.ID.hash;
}

@end
