//
//  BlogDataset.h
//  iOSBlogReader
//
//  Created by mr.scorpion on 16/4/6.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestModel/RestDomainListModel.h"

@interface PageItemEntity : NSObject
@property (strong,nonatomic) NSString* title;
@property (strong,nonatomic) id data;

@property (assign,nonatomic,readonly) NSUInteger aspectID;
@end

@interface PageDataset : NSObject

+ (PageDataset*)dataset;

- (void)prepareDiscover:(void(^)(NSArray<PageItemEntity*> *items,BOOL succeed))complete;

@end
