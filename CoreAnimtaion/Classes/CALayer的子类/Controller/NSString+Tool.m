//
//  NSString+Tool.m
//  CoreAnimtaion
//
//  Created by bailing on 2017/11/27.
//  Copyright © 2017年 bailing. All rights reserved.
//

#import "NSString+Tool.h"

@implementation NSString (Tool)
-(CGSize)stringSzieWithFont:(UIFont *)font WidthLimit:(CGFloat)widthLimt HeightLimt:(CGFloat)heightLimt{
    return [self boundingRectWithSize:CGSizeMake(widthLimt, heightLimt) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
}
@end
