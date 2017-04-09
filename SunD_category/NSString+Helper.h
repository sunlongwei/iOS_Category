//
//  NSString+Helper.h
//  SunD_category
//
//  Created by 孙哈蛤 on 2017/4/8.
//  Copyright © 2017年 孙哈蛤. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Helper)

/**
 *  是否空字符串
 *
 *  @return 如果字符串为nil或者长度为0返回YES
 */
- (BOOL)isEmptyString;

/**
    json字符串转字典
 */
- (NSDictionary *)toDictionary;

/**
 json字符串转数组
 */
- (NSArray *)toArray;

/**
 *  返回沙盒中的文件路径
 *
 *  @return 返回当前字符串对应在沙盒中的完整文件路径
 */
- (NSString *)documentsPath;

/**
 *
 *判断是否是手机号
 */
-(BOOL) isValidateMobile;


/**
 字符串转日期

 @param format 日期格式：如yyyy-MM-dd HH:mm:ss样式
 
 G: 公元时代，例如AD公元 yy: 年的后2位 yyyy: 完整年 MM: 月，显示为1-12 MMM: 月，显示为英文月份简写,如 Jan MMMM: 月，显示为英文月份全称，如 Janualy  dd: 日，2位数表示，如02   d: 日，1-2位显示，如 2   EEE: 简写星期几，如Sun    EEEE: 全写星期几，如Sunday    aa: 上下午，AM/PM   H: 时，24小时制，0-23    K：时，12小时制，0-11    m: 分，1-2位    mm: 分，2位16 s: 秒，1-2位  ss: 秒，2位   S: 毫秒
 @return 日期
 */
- (NSDate *)toDateWithFormat:(NSString *)format;


/**
 日期转字符串 类方法

 @param date 日期对象
 @param format 日期格式
 @return 返回字符串 @“2012-12-4 12：2：33”
 */
+ (NSString *)toStringWithDate:(NSDate *)date format:(NSString *)format;

@end
