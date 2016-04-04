//
//  AllMyWorkModel.m
//  OneYuan
//
//  Created by CaniggiaGoal on 16/3/20.
//  Copyright © 2016年 Peter. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AllMyWorkModel.h"


@implementation AllMyWorkItem

@synthesize workEffectDate,workId,workRate,workNo,workCourseNo,workBranchNo,workComments,workIconFileId,workIconId,workIconName;

@end

@implementation AllMyWorkList

@synthesize count,Rows;
+ (Class)Rows_class {
    return [AllMyWorkItem class];
}

@end

@implementation AllMyWorkModel

+(void)getAllMyWork:(NSString *)userNo success:(void(^)(AFHTTPRequestOperation* operation, NSObject* result))success failure:(void(^)(NSError* error))failure
{
    NSString* url = [NSString stringWithFormat:getUserWorkUrl,userNo];
    [[XBApi SharedXBApi] requestWithURL:url paras:nil type:XBHttpResponseType_Json success:success failure:failure];
}

@end