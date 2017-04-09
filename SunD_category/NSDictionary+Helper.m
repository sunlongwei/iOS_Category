//
//  NSDictionary+Helper.m
//  SunD_category
//
//  Created by 孙哈蛤 on 2017/4/8.
//  Copyright © 2017年 孙哈蛤. All rights reserved.
//

#import "NSDictionary+Helper.h"

@implementation NSDictionary (Helper)

- (NSString *)toJsonString
{
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:0 error:&error];
    if (error) {
        NSLog(@"转json失败:%@", error);
    }
    NSString *jsonStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    return jsonStr;
}


@end
