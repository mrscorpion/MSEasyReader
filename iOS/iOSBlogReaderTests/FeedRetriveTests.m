////
////  FeedRetriveTests.m
////  iOSBlogReader
////
////  Created by mr.scorpion on 16/4/10.
////  Copyright © 2016年 mr.scorpion. All rights reserved.
////
//
//#import <XCTest/XCTest.h>
//#import "RestApi.h"
//#import "FeedParseOperation.h"
//
//@interface FeedRetriveTests : XCTestCase
//
//@end
//
//@implementation FeedRetriveTests
//
//- (void)testParseFeed{
//    XCTestExpectation *expectation = [self expectationWithDescription:@"parse feed"];
//    
//    FeedParseOperation *operation = [[FeedParseOperation alloc]init];
//    operation.feedURLString = @"http://mr.scorpion.github.io/feed.xml";
//    operation.completionBlock = ^{
//        [expectation fulfill];
//    };
//    
//    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
//    [queue addOperation:operation];
//    
//    [self waitForExpectationsWithTimeout:60 handler:nil];
//}
//
//
//@end