//
//  main.m
//  ShareObjectTest
//
//  Created by friday-mbp on 2018/6/22.
//  Copyright © 2018年 friday-mbp. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <dlfcn.h>

NSFileManager *fm;

int main(int argc, char * argv[]) {
    fm = [NSFileManager defaultManager];
    NSString *dylibPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
    
    [fm changeCurrentDirectoryPath:dylibPath];
    
    NSLog(@"%@",[fm currentDirectoryPath]);
    
    
    int(*BFUIApplicationMain)(int argc, char * _Nonnull * _Null_unspecified argv, NSString * _Nullable principalClassName, NSString * _Nullable delegateClassName);
    void *pHandle;
    
    pHandle=dlopen("PrintFile",RTLD_LAZY);
    printf("%s\n",dlerror());
    BFUIApplicationMain = dlsym(pHandle,"BFApplicationMain");
    printf("%s\n",dlerror());
   
    BFUIApplicationMain(argc,argv,nil,@"AppDelegate");
    return 0;
}
