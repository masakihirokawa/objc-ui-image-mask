//
//  ViewController.m
//  UIImageMask
//
//  Created by 廣川政樹 on 2013/05/24.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setMaskedImage];
}

- (void)setMaskedImage
{
    //オリジナル画像
    UIImage *contentImage = [Image resize:[Image getUIImageFromResources:@"Pandora_640_1136" ext:@"jpg"]
                                     rect:CGRectMake(0, 0, 320, 568)];
    
    //マスク画像
    UIImage *maskImage = [Image resize:[Image getUIImageFromResources:@"mask" ext:@"png"]
                                  rect:CGRectMake(0, 0, 320, 568)];
    
    //マスク適用
    UIImage *maskedImage = [Image mask:contentImage
                              withMask:maskImage];
    
    //UIImageViewに格納
    UIImageView *maskedImageView = [[UIImageView alloc] initWithImage:maskedImage];
    
    //画面に追加
    [self.view addSubview:maskedImageView];
}

@end
