//
//  HNButton.m
//  HNSuperButton
//
//  Created by kobe on 2017/5/18.
//  Copyright © 2017年 hanamichi. All rights reserved.
//

#import "HNButton.h"

@interface HNButton ()

//@property (nonatomic, copy) void (^completion)();

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
//    self.completion = completion;
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
        completion();
    }];
    
//    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    
    [alertVC addAction:sureAction];
//    [alertVC addAction:cancelAction];
    
    [[[[UIApplication sharedApplication] keyWindow] rootViewController] presentViewController:alertVC animated:true completion:^{
        
    }];
    
}


@end
