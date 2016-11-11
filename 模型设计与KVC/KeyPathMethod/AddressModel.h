//
//  AddressModel.h
//  模型设计与KVC
//
//  Created by SunYang on 16/11/7.
//  Copyright © 2016年 SunYang. All rights reserved.
//

#import "HObject.h"

@interface AddressModel : HObject
@property (copy, nonatomic) NSString *ID;
@property (copy, nonatomic) NSString *desc;

- (instancetype)initWithDict:(NSDictionary *)dict;
@end
