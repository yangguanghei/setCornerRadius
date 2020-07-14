//
//  ViewController.m
//  2.高效设置圆角
//
//  Created by 梁森 on 2020/7/10.
//  Copyright © 2020 梁森. All rights reserved.
//

#import "ViewController.h"

#import "UIView+LSCornerRadius.h"
#import "UIImageView+LSUIImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 普通UIView
    UIView * redView = [UIView new];
    [self.view addSubview:redView];
    redView.backgroundColor = [UIColor redColor];
    redView.frame = CGRectMake(100, 100, 100, 100);
    redView.layer.cornerRadius = redView.bounds.size.width * 0.5;
    redView.layer.masksToBounds = YES;
    redView.layer.borderColor = [UIColor greenColor].CGColor;
    redView.layer.borderWidth = 4;
    
    // UIImageView
    UIImageView * imageV = [UIImageView new];
    [self.view addSubview:imageV];
    imageV.backgroundColor = [UIColor blackColor];
    imageV.frame = CGRectMake(100, 200, 100, 100);
    imageV.layer.cornerRadius = imageV.bounds.size.width * 0.5;
    imageV.layer.masksToBounds = YES;
    imageV.image = [UIImage imageNamed:@"15519768"];
    imageV.layer.borderWidth = 4;
    imageV.layer.borderColor = [UIColor greenColor].CGColor;
    
    UIImageView * imageV1 = [UIImageView new];
    [self.view addSubview:imageV1];
    imageV1.frame = CGRectMake(100, 400, 100, 100);
    imageV1.image = [UIImage imageNamed:@"15519768"];
    imageV1.image = [imageV1 ls_drawCircleImageWithRadius:50];
    
    UIImageView * imageV2 = [[UIImageView alloc]initWithFrame:CGRectMake(100, 300, 100, 100)];
    imageV2.image = [UIImage imageNamed:@"15519768"];
    [self.view addSubview:[imageV2 ls_getViewWithCornerRadius:20]];
    
    // UIButton
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(200, 100, 100, 100);
    [btn setBackgroundImage:[UIImage imageNamed:@"15519768"] forState:UIControlStateNormal];
    [self.view addSubview:[btn ls_getViewWithCornerRadius:50]];
    
    UIButton * btn1 = [[UIButton alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
    [btn1 setImage:[UIImage imageNamed:@"15519768.png"] forState:UIControlStateNormal];
    [btn1 setTitle:@"111" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor blackColor];
    [self.view addSubview:btn1];
    btn1.layer.cornerRadius = 50;
    btn1.clipsToBounds = YES;
    
    UIButton * btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn2.frame = CGRectMake(200, 300, 100, 100);
    [btn2 setImage:[UIImage imageNamed:@"15519768.png"] forState:UIControlStateNormal];
    [self.view addSubview:btn2];

}



@end
