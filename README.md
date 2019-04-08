# LogManager
 ###   使用注意点：

1. 在appdelegate进行配置如下

```
 [LogManager redirectNSLogToDocumentFolder];
```

 

2. 在需要展示出日志的地方操作：

 ```
FMLogController *logVC = [FMLogController new];

 [self.navigationController pushViewController:logVC

 animated:YES];

 ```















÷

