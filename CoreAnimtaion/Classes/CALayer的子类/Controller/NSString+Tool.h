//
//  NSString+Tool.h
//  CoreAnimtaion
//
//  Created by bailing on 2017/11/27.
//  Copyright © 2017年 bailing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@interface NSString (Tool)
-(CGSize)stringSzieWithFont:(UIFont *)font
                 WidthLimit:(CGFloat)widthLimt
                 HeightLimt:(CGFloat)heightLimt;
@end
