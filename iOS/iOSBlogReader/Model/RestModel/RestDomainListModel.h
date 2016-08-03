//
//  RestDomainListModel.h
//  iOSBlogReader
//
//  Created by mr.scorpion on 16/4/8.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RestAspectModel : NSObject
@property (assign,nonatomic) NSUInteger oid;
@property (strong,nonatomic) NSString *name;
@property (assign,nonatomic) NSUInteger zindex;
@end

@interface RestDomainModel : NSObject
@property (assign,nonatomic) NSUInteger oid;
@property (strong,nonatomic) NSString *name;
@property (assign,nonatomic) NSUInteger zindex;
@property (strong,nonatomic) NSArray<RestAspectModel*> *aspects;
@end

@interface RestDomainListModel : NSObject
@property (strong,nonatomic) NSArray<RestDomainModel*> *domains;
@end
