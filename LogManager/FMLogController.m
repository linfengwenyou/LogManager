//
//  FMLogController.m
//  YiShouManager
//
//  Created by fumi on 2018/11/13.
//  Copyright © 2018 fumi. All rights reserved.
//

#import "FMLogController.h"
#import "LogCons.h"

@interface FMLogController ()
@property (weak, nonatomic) IBOutlet UITextView *logView;

@end

@implementation FMLogController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.logView.text = nil;
    self.title = @"日志记录";
    // 读取log信息，并将其展示在日志上
    [self readFromLogFile];
}


- (void)readFromLogFile {
    NSString *filePath = [LogManager filePath];
    
    NSString *content = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    self.logView.text = content;
    
}

#pragma mark -- public

@end
