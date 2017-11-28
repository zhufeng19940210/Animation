//
//  ViewController.m
//  CoreAnimtaion
//
//  Created by bailing on 2017/11/27.
//  Copyright © 2017年 bailing. All rights reserved.
//

#import "ViewController.h"
#import "AnimationTestViewController.h"
#import "CAAnimationViewController.h"
#import "CADisplayLinkViewController.h"
#import "CAShapeLayerViewController.h"
#import "CATextLayerViewController.h"
#import "AlphaTestViewController.h"
#import "LIZISendViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
//CAAimation的使用
- (IBAction)onClickCAAimationBtn:(UIButton *)sender {
    CAAnimationViewController *baseVc = [[CAAnimationViewController alloc]init];
    [self.navigationController pushViewController:baseVc animated:YES];
}
//CAAimatioin的test
- (IBAction)onClickCAAimatioTestBtn:(UIButton *)sender {
    AnimationTestViewController *testVc = [[AnimationTestViewController alloc]init];
    [self.navigationController pushViewController:testVc animated:YES];
}
//CADiplayLink
- (IBAction)onClickDiplayLinkBtn:(UIButton *)sender {
    CADisplayLinkViewController *linkVc = [[CADisplayLinkViewController alloc]init];
    [self.navigationController pushViewController:linkVc animated:YES];
}
// CALyer的子类
- (IBAction)onClickCALayerSubBtn:(UIButton *)sender {
    /*CAShapeLayerViewController *shapeTyerVc = [[CAShapeLayerViewController alloc]init];
    [self.navigationController pushViewController:shapeTyerVc animated:YES];*/
    CATextLayerViewController *textVc = [[CATextLayerViewController alloc]init];
    [self.navigationController pushViewController:textVc animated:YES];
    
}
//图层的透视
- (IBAction)onClickAlphaBtn:(UIButton *)sender {
    AlphaTestViewController *alphaVc = [[AlphaTestViewController alloc]init];
    [self.navigationController pushViewController:alphaVc animated:YES];
}
//粒子发射
- (IBAction)onClicklziSendBtn:(id)sender {
    LIZISendViewController *liziVc = [[LIZISendViewController alloc]init];
    [self.navigationController pushViewController:liziVc animated:YES];
}

@end
