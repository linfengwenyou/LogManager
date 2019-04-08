//
//  FMLoginManager.m
//  YiShouManager
//
//  Created by fumi on 2018/11/13.
//  Copyright © 2018 fumi. All rights reserved.
//

#import "LogManager.h"
#import "LogCons.h"


@implementation LogManager

+ (void)redirectNSLogToDocumentFolder {
    
#if DEBUG
    //如果已经连接Xcode调试则不输出到文件
    if(isatty(STDOUT_FILENO)) {
        return;
    }
    
    // 先删除已经存在的文件
    NSFileManager *defaultManager = [NSFileManager defaultManager];
    NSString *logFilePath = [self filePath];
    
    [defaultManager removeItemAtPath:logFilePath error:nil];
    // 将log输入到文件
    
    freopen([logFilePath cStringUsingEncoding:NSASCIIStringEncoding], "a+", stdout);
    freopen([logFilePath cStringUsingEncoding:NSASCIIStringEncoding], "a+", stderr);
#endif
}


+ (NSString *)filePath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    NSString *fileName = [NSString stringWithFormat:@"dr.log"];// 注意不是NSData!
    NSString *logFilePath = [documentDirectory stringByAppendingPathComponent:fileName];
    
    return logFilePath;
}

@end
