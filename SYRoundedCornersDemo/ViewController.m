//
//  ViewController.m
//  圆角Demo
//
//  Created by Kellen on 2017/2/13.
//  Copyright © 2017年 ShenYan. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+SYRounderCorners.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imgv = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    imgv.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:imgv];
    
    [[UIImage imageNamed:@"cat1.jpg"] sy_setRounderCornersSize:imgv.bounds.size completed:^(UIImage *image) {
        imgv.image = image;
    }];
    
    UIImageView *imgv2 = [[UIImageView alloc] initWithFrame:CGRectMake(100, 220, 100, 100)];
    imgv2.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:imgv2];
    
    [[UIImage imageNamed:@"cat1.jpg"] sy_setCornersRadius:10 size:imgv2.bounds.size completed:^(UIImage *image) {
        imgv2.image = image;
    }];
    NSLog(@"set2");
    
    UIImageView *imgv3 = [[UIImageView alloc] initWithFrame:CGRectMake(100, 400, 100, 100)];
    imgv3.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:imgv3];
    
    [[UIImage imageNamed:@"cat1.jpg"] sy_setCornersRadius:SYCornersRadiusMake(5, 10, 3, 8) size:imgv2.bounds.size borderColor:[UIColor redColor] borderWidth:3 contentMode:UIViewContentModeScaleToFill completed:^(UIImage *image) {
        imgv3.image = image;
    }];
    NSLog(@"set2");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
