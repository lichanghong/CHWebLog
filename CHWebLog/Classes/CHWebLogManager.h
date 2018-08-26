//
//  CHWebLogManager.h
//  CHWebLog
//
//  Created by lichanghong on 8/26/18.
//  Copyright © 2018 lichanghong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHWebLogManager : NSMutableString
+ (instancetype)sharedInstance;
//先配置服务器路径
void configChlogWithURLAndPort(NSString *url,NSInteger port);

//打印日志使用这个
void chlog(NSString *log, ...)  NS_FORMAT_FUNCTION(1,2);

@end
