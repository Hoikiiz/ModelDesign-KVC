//
//  NormalUserModel.h
//  模型设计与KVC
//
//  Created by SunYang on 16/11/7.
//  Copyright © 2016年 SunYang. All rights reserved.
//  记录一个用户的模型，保存了基本的用户信息，使用一个字典进行初始化

#import "HObject.h"
#import "AddressModel.h"

typedef enum : NSUInteger {
    UserNameTypeEnglish = 1,
    UserNameTypeChinese
}UserNameType;


@interface UserModel : HObject
@property  (copy, nonatomic) NSString *firstName;
@property (copy, nonatomic) NSString *lastName;
@property (copy, readonly , nonatomic) NSString *fullName;

@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) UserNameType nameType;

@property (copy, nonatomic) NSString *ID;
@property (strong, nonatomic) AddressModel *address;


- (instancetype)initWithDict:(NSDictionary *)dict;

@end
