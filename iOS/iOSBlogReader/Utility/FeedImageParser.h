//
//  FeedImageParser.h
//  iOSBlogReader
//
//  Created by mr.scorpion on 16/4/27.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FeedImageParser : NSObject

+ (FeedImageParser*)parser;

- (NSString*)parseFirstImage:(NSString*)htmlContent baseUri:(NSString*)baseUri;

@end
