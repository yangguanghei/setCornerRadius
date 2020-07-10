//
//  ViewController.m
//  2.高效设置圆角
//
//  Created by 梁森 on 2020/7/10.
//  Copyright © 2020 梁森. All rights reserved.
//

#import "ViewController.h"

#import "UIView+LSCornerRadius.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor greenColor];
    
    UIView * redView = [UIView new];
    [self.view addSubview:redView];
    redView.backgroundColor = [UIColor redColor];
    redView.frame = CGRectMake(100, 100, 100, 100);
    redView.layer.cornerRadius = redView.bounds.size.width * 0.5;
    
    UIImageView * imageV = [UIImageView new];
    [self.view addSubview:imageV];
    imageV.backgroundColor = [UIColor yellowColor];
    imageV.frame = CGRectMake(100, 200, 100, 100);
    imageV.layer.cornerRadius = imageV.bounds.size.width * 0.5;
    imageV.layer.masksToBounds = YES;
    imageV.image = [UIImage imageNamed:@"15519768"];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.backgroundColor = [UIColor blueColor];
    btn.frame = CGRectMake(100, 300, 100, 100);
    [btn setBackgroundImage:[UIImage imageNamed:@"15519768"] forState:UIControlStateNormal];
    [self.view addSubview:[btn ls_getViewWithCornerRadius:50]];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(200, 100, 100, 100)];
    imageView.image = [UIImage imageNamed:@"15519768"];
    [self.view addSubview:[imageView ls_getViewWithCornerRadius:50]];
    
    

}



@end
