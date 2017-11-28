//
//  CATextLayerViewController.m
//  CoreAnimtaion
//
//  Created by bailing on 2017/11/27.
//  Copyright © 2017年 bailing. All rights reserved.
//

#import "CATextLayerViewController.h"
#import "DWLyricLabel.h"
@interface CATextLayerViewController ()

@end

@implementation CATextLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    DWLyricLabel * lyricLB = [[DWLyricLabel alloc] initWithString:@"只怪你入戏太深" font:[UIFont fontWithName:@"PingFangSC-Semibold" size:12] widthLimit:0 heightLimit:100];
    lyricLB.backgroundColor = [UIColor redColor];
    lyricLB.tintColor = [UIColor blackColor];
    lyricLB.trackTintColor = [UIColor greenColor];
    lyricLB.center = self.view.center;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [lyricLB updateLocation:6 duration:3];
    });
    
    [self.view addSubview:lyricLB];
}
@end
