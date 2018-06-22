//
//  PrintLib.c
//  PrintFile
//
//  Created by friday-mbp on 2018/6/22.
//  Copyright © 2018年 friday-mbp. All rights reserved.
//

#include "PrintLib.h"
#import "AppDelegate.h"
@protocol AppProtocol<NSObject>
@property (strong, nonatomic) UIWindow *window;
@end

int BFApplicationMain(int argc,
                      char * _Nonnull * _Null_unspecified argv,
                      NSString * _Nullable principalClassName,
                      NSString * _Nullable delegateClassName)
{
    
    printf("111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");

    
    @autoreleasepool{
         return UIApplicationMain(argc, argv, principalClassName, delegateClassName);
    }

    return YES;
}

void printx()
{
//    id<AppProtocol> theApp = (id<AppProtocol>)[UIApplication sharedApplication].delegate;
//    UIWindow *theWindow = theApp.window;
//    printf("我是吴宝峰");
////    theWindow.rootViewController.view.backgroundColor = [UIColor redColor];
//    theWindow.rootViewController.view.backgroundColor = [UIColor blueColor];
//    UIApplicationMain(<#int argc#>, <#char * _Nonnull * _Null_unspecified argv#>, <#NSString * _Nullable principalClassName#>, <#NSString * _Nullable delegateClassName#>)
//    
    return;
}
