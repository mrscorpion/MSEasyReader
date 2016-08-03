//
//  AspectModel+CoreDataProperties.h
//  iOSBlogReader
//
//  Created by mr.scorpion on 16/5/14.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "AspectModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface AspectModel (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *oid;
@property (nullable, nonatomic, retain) NSNumber *zindex;
@property (nullable, nonatomic, retain) DomainModel *domain;

@end

NS_ASSUME_NONNULL_END
