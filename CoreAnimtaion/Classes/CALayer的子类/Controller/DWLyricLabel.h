//
//  DWLyricLabel.h
//  CoreAnimtaion
//
//  Created by bailing on 2017/11/27.
//  Copyright © 2017年 bailing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DWLyricLabel : UIView
@property (nonatomic ,assign) NSInteger location;
@property (nonatomic) UIColor * trackTintColor;
-(instancetype)initWithString:(NSString *)lyric
                         font:(UIFont *)font
                   widthLimit:(CGFloat)widthLimit
                  heightLimit:(CGFloat)heightLimit;
-(void)updateWithDuration:(CGFloat)duartion;
-(void)updateLocation:(NSInteger)location
             duration:(CGFloat)duration;
-(void)updateProgress:(CGFloat)progress
             duration:(CGFloat)duration;
@end
