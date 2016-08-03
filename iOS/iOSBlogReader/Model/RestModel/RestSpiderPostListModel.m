//
//  RestSpiderPostListModel.m
//  iOSBlogReader
//
//  Created by mr.scorpion on 16/5/9.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import "RestSpiderPostListModel.h"

@implementation RestSpiderPostModel
@end

@implementation RestSpiderPostListModel
+ (NSDictionary*)modelContainerPropertyGenericClass{
    return @{ @"posts":RestSpiderPostModel.class };
}

@end
