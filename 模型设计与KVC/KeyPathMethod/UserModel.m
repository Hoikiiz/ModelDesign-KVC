//
//  NormalUserModel.m
//  模型设计与KVC
//
//  Created by SunYang on 16/11/7.
//  Copyright © 2016年 SunYang. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel {
    NSString *privateKey;
}

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        NSDictionary *addressJSONDict = dict[@"address"];
        self.address = [[AddressModel alloc] initWithDict:addressJSONDict];
        [self setValuesForKeysWithDictionary:dict];
        
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
    return [NSString stringWithFormat:@"%ld", self.age];
}

- (BOOL)isEqual:(id)object {
    UserModel *userModel = (UserModel *)object;
    return [self.ID isEqualToString:userModel.ID];
}

- (NSUInteger)hash {
    return self.ID.hash;
}


#pragma mark - KVC

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if ([key isEqualToString:@"id"]) {
        [self setValue:value forKey:@"ID"];
    } else {
        [super setValue:value forUndefinedKey:key];
    }
}

- (id)valueForUndefinedKey:(NSString *)key {
    if ([key isEqualToString:@"id"]) {
        return [self valueForKey:@"ID"];
    } else {
        return [super valueForUndefinedKey:key];
    }
}

- (void)setValue:(id)value forKey:(NSString *)key {
    if ([key isEqualToString:@"address"]) {
        [super setValue:[[AddressModel alloc] initWithDict:value] forKey:key];
    } else {
        [super setValue:value forKey:key];
    }
}







@end
