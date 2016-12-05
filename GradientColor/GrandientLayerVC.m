//
//  GrandientLayerVC.m
//  GradientColor
//
//  Created by my on 2016/12/2.
//  Copyright © 2016年 my. All rights reserved.
//

#import "GrandientLayerVC.h"

@interface GrandientLayerVC ()
{
    CAGradientLayer *gradientLayer;
}
@end

@implementation GrandientLayerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    gradientLayer = [[CAGradientLayer alloc] init];
    //渐变的颜色
    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor,(__bridge id)[UIColor yellowColor].CGColor, (__bridge id)[UIColor blueColor].CGColor];
    //渐变颜色的分割点
    gradientLayer.locations = @[@0.3,@0.6];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 1);
    gradientLayer.frame = CGRectMake(10, 100, 200, 200);
    [self.view.layer addSublayer:gradientLayer];
}

@end
