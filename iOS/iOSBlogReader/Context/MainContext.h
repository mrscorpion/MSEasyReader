//
//  MainContext.h
//  iOSBlogReader
//
//  Created by mr.scorpion on 16/4/10.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainContext : NSObject

+ (MainContext*)sharedContext;

@property (weak,nonatomic) UINavigationController *discoverNavigationController;

@end
