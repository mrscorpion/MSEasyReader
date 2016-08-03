//
//  AppUtil.m
//  iOSBlogReader
//
//  Created by mr.scorpion on 16/4/6.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import "AppUtil.h"

@implementation AppUtil{
    NSDateFormatter *_dateFormatter;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dateFormatter = [[NSDateFormatter alloc]init];
        [_dateFormatter setDateFormat:@"yyyy/MM/dd"];
    }
    return self;
}

+ (AppUtil *)util{
    static AppUtil *o;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        o = [AppUtil new];
    });
    return o;
}

+ (NSURL *)documentsDirectory {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSString *)formatDate:(NSDate *)date{
    if(!date)return @"";
    return [_dateFormatter stringFromDate:date];
}


@end
