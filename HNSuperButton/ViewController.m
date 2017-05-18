//
//  ViewController.m
//  HNSuperButton
//
//  Created by kobe on 2017/5/18.
//  Copyright © 2017年 hanamichi. All rights reserved.
//

#import "ViewController.h"
#import "HNButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clickTest:(UIButton *)sender {
    [HNButton showMessage:@"哈哈 点我" completion:^{
        NSLog(@"有点意思/n%@", self);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
