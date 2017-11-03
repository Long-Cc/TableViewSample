//
//  Group.h
//  TableViewSample
//
//  Created by LongCh on 2017/10/9.
//  Copyright © 2017年 LongCh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Group : NSObject
@property (nonatomic,copy) NSString *desc;//描述
@property (nonatomic,copy) NSString *yieldy;//产地
@property (nonatomic,strong) NSArray *brands;

- (instancetype) initWithDict:(NSDictionary *)dict;
+ (instancetype) groupWithDict:(NSDictionary *)dict;
@end
