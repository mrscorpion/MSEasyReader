//
//  RestSpiderPostListModel.h
//  iOSBlogReader
//
//  Created by mr.scorpion on 16/5/9.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RestSpiderPostModel : NSObject

@property (strong,nonatomic) NSString *title;
@property (strong,nonatomic) NSString *link;
@property (strong,nonatomic) NSDate *createtime;
@property (strong,nonatomic) NSString *image;

@end

@interface RestSpiderPostListModel : NSObject

@property (strong,nonatomic) NSArray<RestSpiderPostModel*> *posts;

@end
