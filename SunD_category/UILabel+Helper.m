//
//  UILabel+Helper.m
//  SunD_category
//
//  Created by 孙哈蛤 on 2017/4/9.
//  Copyright © 2017年 孙哈蛤. All rights reserved.
//

#import "UILabel+Helper.h"

@implementation UILabel (Helper)

#pragma mark 获取label的高度
- (CGSize)sizeWithFont:(UIFont *)font Width:(CGFloat)width
{
    CGSize size = CGSizeMake(width, MAXFLOAT);//限制文字显识的一个区域
    NSDictionary *att = @{NSFontAttributeName : font};//文字显示的属性
    CGRect rect = [self.text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:att context:nil];//计算出文字显示需要的大小
    return rect.size;

}

@end
