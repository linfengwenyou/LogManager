//
//  FMLoginManager.h
//  YiShouManager
//
//  Created by fumi on 2018/11/13.
//  Copyright © 2018 fumi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LogManager : NSObject

/** 重定向 */
+ (void)redirectNSLogToDocumentFolder;

/** 获取日志文件路径 */
+ (NSString *)filePath;

@end

NS_ASSUME_NONNULL_END
/*
 使用注意点：
 1. 在appdelegate进行配置如下
 [LogManager redirectNSLogToDocumentFolder];
 
 2. 在需要展示出日志的地方操作：
 FMLogController *logVC = [FMLogController new];
 [self.navigationController pushViewController:logVC
 animated:YES];
 
 
 
 */
