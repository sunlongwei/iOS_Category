//
//  NSString+Helper.m
//  SunD_category
//
//  Created by 孙哈蛤 on 2017/4/8.
//  Copyright © 2017年 孙哈蛤. All rights reserved.
//

#import "NSString+Helper.h"

@implementation NSString (Helper)

#pragma mark 是否空字符串
- (BOOL)isEmptyString
{
    return (!self || self.length <1  || [self isEqualToString:@"(null)"] || [self isEqualToString:@"<null>"]);
}

#pragma mark json字符串转字典
- (NSDictionary *)toDictionary
{
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&err];
    if (err) {
        NSLog(@"json解析失败:%@", err);
    }
    return dict;
}

#pragma mark json字符串转数组
- (NSArray *)toArray
{
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSArray *array = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&err];
    if (err) {
        NSLog(@"json解析失败:%@", err);
    }
    return array;
}

#pragma mark 返回沙盒中的文件路径
- (NSString *)documentsPath
{
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    return [path stringByAppendingString:self];
}

#pragma mark 手机号码验证
-(BOOL) isValidateMobile
{
    if ([self isEmptyString]) {
        return NO;
    }
    //手机号以13， 15，18 等数字开头，八个 \d 数字字符
    NSString *phoneRegex = @"^((1[3578][0-9])|(14[57])|(17[0678]))\\d{8}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    return [phoneTest evaluateWithObject:self];
}

#pragma mark 字符串转日期
- (NSDate *)toDateWithFormat:(NSString *)format
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    NSDate *date = [formatter dateFromString:self];
    return date;
}

#pragma mark 日期转字符串
+ (NSString *)toStringWithDate:(NSDate *)date format:(NSString *)format
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    NSString *dateStr = [formatter stringFromDate:date];
    return dateStr;
}

@end
