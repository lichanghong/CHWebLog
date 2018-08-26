//
//  CHWebLogManager.m
//  CHWebLog
//
//  Created by lichanghong on 8/26/18.
//  Copyright © 2018 lichanghong. All rights reserved.
//

#import "CHWebLogManager.h"

@interface CHWebLogManager()
@property (nonatomic,copy)NSString *host;
@property (nonatomic,assign)NSInteger port;

@end

@implementation CHWebLogManager

+ (instancetype)sharedInstance
{
    static CHWebLogManager *_mananger = nil;
    @synchronized(self)
    {
        if (!_mananger) {
            _mananger = [[CHWebLogManager alloc]init];
        }
        return _mananger;
    }
}

void configChlogWithURLAndPort(NSString *url,NSInteger port)
{
    [CHWebLogManager sharedInstance].host = url;
    [CHWebLogManager sharedInstance].port = port;
}

void chlog(NSString *log, ...)
{
    @try {
        va_list ap;
        NSString *print;
        va_start(ap,log);
        print = [[NSString alloc] initWithFormat: log arguments: ap];
        if (print == nil) {
            print = @"";
        }
        va_end(ap);
        
        // 定义一个指向可选参数列表的指针
        NSURLSession *session = [NSURLSession sharedSession];
        NSString *strurl = [NSString stringWithFormat:@"http://%@:%ld/cgi-bin/log_record.py?log=%@",
                            [CHWebLogManager sharedInstance].host,
                            [CHWebLogManager sharedInstance].port,
                            print];
        strurl = [strurl stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
        NSURL *url = [NSURL URLWithString:strurl];
        NSURLSessionTask *task = [session dataTaskWithURL:url
                                        completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                                            
                                        }];
        [task resume];
    }
    @catch (NSException * e) {
    }
    @finally {
        
    }
}

@end
