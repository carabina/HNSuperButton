//
//  HNButton.h
//  HNSuperButton
//
//  Created by kobe on 2017/5/18.
//  Copyright © 2017年 hanamichi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HNButton : UIButton

+ (instancetype)shareInstance;

+ (void)showMessage:(NSString *)message completion:(void(^)())completion;

- (void)showMessage:(NSString *)message completion:(void(^)())completion;

@end
