//
//  ViewController.m
//  屏幕截取
//
//  Created by 上海均衡 on 2017/1/22.
//  Copyright © 2017年 上海均衡. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //开启图形上下文
    UIGraphicsBeginImageContextWithOptions(self.view.frame.size, NO, 0);
    //获取当前上下文
    CGContextRef context=UIGraphicsGetCurrentContext();
    //把控件上的图层渲染到当前的上下文
    [self.view.layer renderInContext:context];
    //获取当前的图片
    UIImage *image=UIGraphicsGetImageFromCurrentImageContext();
    //将当前图片转换为二进制数据
    NSData *data=UIImagePNGRepresentation(image);
    //写到桌面上
    [data writeToFile:@"/Users/shanghaijunheng/Desktop/test.png" atomically:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
