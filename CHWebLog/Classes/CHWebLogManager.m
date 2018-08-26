//
//  CHWebLogManager.m
//  CHWebLog
//
//  Created by lichanghong on 8/26/18.
//  Copyright © 2018 lichanghong. All rights reserved.
//

#import "CHWebLogManager.h"

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

void configChlogWithURLAndPort(NSString *url,NSString *port)
{
    
}
void chlog(NSString *log)
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSURL *url = [NSURL URLWithString:@"http://192.168.0.2:8811/cgi-bin/get_post.py?log=lichanghong"];
    NSURLSessionTask *task = [session dataTaskWithURL:url
                                    completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                                        
                                    }];
    [task resume];
}

@end
