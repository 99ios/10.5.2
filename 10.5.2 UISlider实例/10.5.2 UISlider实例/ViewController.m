//
//  ViewController.m
//  10.5.2 UISlider实例
//
//  Created by 李维佳 on 2017/4/4.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UISlider *slider;
@property(nonatomic,strong)UIImageView *imageView;
@end

@implementation ViewController

- (UISlider *)slider {
    if (_slider == nil) {
        _slider = [[UISlider alloc]initWithFrame:CGRectMake(20, 400, [UIScreen mainScreen].bounds.size.width - 40, 20)];
        _slider.value = 0.5;
        _slider.minimumTrackTintColor = [UIColor greenColor];
        _slider.maximumTrackTintColor = [UIColor blackColor];
        _slider.thumbTintColor = [UIColor grayColor];
        [_slider addTarget:self action:@selector(change) forControlEvents:UIControlEventValueChanged];
    }
    return _slider;
}

- (UIImageView *)imageView {
    if (_imageView == nil) {
        _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 220)];
        _imageView.image = [UIImage imageNamed:@"99logo"];
        _imageView.layer.masksToBounds = YES;
        _imageView.layer.borderWidth = 1;
        _imageView.alpha = 0.5;
    }
    return _imageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.slider];
    [self.view addSubview:self.imageView];
}

- (void)change {
    [self.imageView setAlpha:self.slider.value];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
