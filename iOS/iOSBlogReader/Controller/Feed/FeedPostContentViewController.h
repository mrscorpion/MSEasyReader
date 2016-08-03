//
//  FeedPostContentViewController.h
//  iOSBlogReader
//
//  Created by mr.scorpion on 16/4/24.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeedItemManager.h"
#import "EEViewController.h"

@interface FeedPostContentViewController : EEViewController

- (instancetype)initWithFeedPost:(FeedItemUIEntity*)post;

@end
