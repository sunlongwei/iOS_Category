//
//  NSArray+Helper.m
//  SunD_category
//
//  Created by 孙哈蛤 on 2017/4/8.
//  Copyright © 2017年 孙哈蛤. All rights reserved.
//

#import "NSArray+Helper.h"

@implementation NSArray (Helper)


- (NSString *)toJsonString
{
    NSError *error;
    //option设置为0，生成的字符串就不带有空格和换行。
    //枚举NSJSONWritingPrettyPrinted，表示打印好看，有换行和空格
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:0 error:&error];
    if (error) {
        NSLog(@"转json失败:%@", error);
    }
    NSString *jsonStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    return jsonStr;
}

@end
