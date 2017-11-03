//
//  Group.m
//  TableViewSample
//
//  Created by LongCh on 2017/10/9.
//  Copyright © 2017年 LongCh. All rights reserved.
//

#import "Group.h"

@implementation Group

- (instancetype) initWithDict:(NSDictionary *)dict{
    if(self = [super init]){
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+ (instancetype) groupWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

@end
