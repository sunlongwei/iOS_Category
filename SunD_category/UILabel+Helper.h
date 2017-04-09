//
//  UILabel+Helper.h
//  SunD_category
//
//  Created by 孙哈蛤 on 2017/4/9.
//  Copyright © 2017年 孙哈蛤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Helper)

/**
 *  根据宽度返回段落的高度
 */
-(CGSize)sizeWithFont:(UIFont *)font Width:(CGFloat)width;

@end
