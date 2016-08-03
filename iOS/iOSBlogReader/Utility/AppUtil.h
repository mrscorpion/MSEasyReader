//
//  AppUtil.h
//  iOSBlogReader
//
//  Created by mr.scorpion on 16/4/6.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppUtil : NSObject

+ (NSURL *)documentsDirectory;

+ (AppUtil*)util;
- (NSString *)formatDate:(NSDate *)date;


@end
