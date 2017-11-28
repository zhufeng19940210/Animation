//
//  CAShapeLayerViewController.m
//  CoreAnimtaion
//
//  Created by bailing on 2017/11/27.
//  Copyright © 2017年 bailing. All rights reserved.
//

#import "CAShapeLayerViewController.h"

@interface CAShapeLayerViewController ()

@end

@implementation CAShapeLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //CAShareLayter的优势:他的渲染都在GPU里面，不！占！内！存！
    //里面有一个属性是path：这个很牛逼的，根据这个path来绘制
    self.view.backgroundColor = [UIColor grayColor];
    [self kongxinMethod];
}

-(void)circleMethod{

    CAShapeLayer * circle = [CAShapeLayer layer];
    circle.bounds = CGRectMake(0, 0, 100, 100);
    circle.position = self.view.center;
    [self.view.layer addSublayer:circle];
    circle.path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)].CGPath;
    circle.strokeColor = [UIColor redColor].CGColor; //外围的颜色
    circle.fillColor = [UIColor yellowColor].CGColor; //填充的颜色
    circle.lineWidth = 1;                             // 线条宽度
    circle.lineCap = @"round";                        //形状
    circle.strokeEnd = 1;                             //终点范围为【0---1】;
}
-(void)kongxinMethod{
    CGRect rect = CGRectMake(0, 0, 100, 100);
    UIBezierPath * rectP = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:5];
    UIBezierPath * circleP = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 80, 80)];
    [rectP appendPath:circleP];
    CAShapeLayer * layer = [CAShapeLayer layer];
    layer.bounds = CGRectMake(0, 0, 100, 100);
    layer.position = self.view.center;
    layer.path = rectP.CGPath;
    layer.fillColor = [UIColor colorWithWhite:0 alpha:0.5].CGColor;
    layer.fillRule = kCAFillRuleEvenOdd;
    [self.view.layer addSublayer:layer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
