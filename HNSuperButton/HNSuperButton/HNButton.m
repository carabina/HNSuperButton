//
//  HNButton.m
//  HNSuperButton
//
//  Created by kobe on 2017/5/18.
//  Copyright © 2017年 hanamichi. All rights reserved.
//

#import "HNButton.h"

@interface HNButton ()

@end

@implementation HNButton

static id instance;

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (void)showMessage:(NSString *)message completion:(void (^)())completion {
    [self shareInstance];
    [instance showMessage:message completion:completion];
}

- (void)showMessage:(NSString *)message completion:(void (^)())completion {
    
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
        completion();
    }];
    
    [alertVC addAction:sureAction];
    
    [[[[UIApplication sharedApplication] keyWindow] rootViewController] presentViewController:alertVC animated:true completion:^{
        
    }];
    
}


@end
