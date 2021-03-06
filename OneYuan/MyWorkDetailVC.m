//
//  MyWorkDetailVC.m
//  OneYuan
//
//  Created by CaniggiaGoal on 16/3/23.
//  Copyright © 2016年 Peter. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MyWorkDetailVC.h"


@interface MyWorkDetailVC ()
{
    UIImageView     *imgPro;
    UILabel *date;
    UILabel *time;
    UILabel *dianPing;
    UIImageView *levelImage;
    
    
    NSString *workInfoEffectDate;
    NSString *workInfoId;
    NSString *workInfoRate;
    NSString *workInfoNo;
    NSString *workInfoCourseNo;
    NSString *workInfoBranchNo;
    NSString *workInfoComments;
    NSString *workInfoIconId;
    NSString *workInfoIconFileId;
    NSString *workInfoIconName;
  
    
    
    NSString *image;
    
    
    
    
    
    
    
    
}
@end

@implementation MyWorkDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"我 的 作 品";
    self.view.backgroundColor = [UIColor hexFloatColor:@"f8f8f8"];
    __weak typeof (self) wSelf = self;
    
    [self.navigationController.navigationBar  setBackgroundImage:[UIImage imageWithRenderColor:MYWORK_NAVBAR_COLOR renderSize:CGSizeMake(10., 10.)] forBarMetrics:UIBarMetricsDefault];
    
    
    
    [self actionCustomLeftBtnWithNrlImage:@"btnback" htlImage:@"btnback" title:@"" action:^{
        [wSelf.navigationController popViewControllerAnimated:YES];
    }];
    
    imgPro = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10 ,(mainWidth - 20), mainHeight/2)];
    
    //imgProLeft.image = [UIImage imageNamed:@"noimage"];
    imgPro.layer.borderWidth = 0.5;
    imgPro.layer.cornerRadius = 5;
    imgPro.layer.borderColor = [[UIColor hexFloatColor:@"dedede"] CGColor];
    imgPro.layer.masksToBounds = YES;
    
    [imgPro setImage_oy:workImageBaseUrl image:image];
    
    [self.view addSubview:imgPro];
    
    date = [[UILabel alloc]initWithFrame:CGRectMake(10,20 + mainHeight/2,(mainWidth - 20)/4 + 2, 20)];
    
    date.text = @"日期:";
    
    date.backgroundColor = [UIColor hexFloatColor:@"EE7600"];
    date.textColor = [UIColor whiteColor];
    date.font = [UIFont systemFontOfSize:20];
    date.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:date];
    
    time = [[UILabel alloc]initWithFrame:CGRectMake(10 + (mainWidth - 20)/4,20 + mainHeight/2,(mainWidth - 20)*0.75, 20)];
    
    time.text = workInfoEffectDate;
    
    time.backgroundColor = [UIColor hexFloatColor:@"EE7600"];
    time.textColor = [UIColor whiteColor];
    time.font = [UIFont systemFontOfSize:20];
    time.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:time];
    
    
    dianPing = [[UILabel alloc]initWithFrame:CGRectMake(10,40 + mainHeight/2,(mainWidth - 20)/4, 20)];
    dianPing.text = @"点评:";
    dianPing.textColor = [UIColor hexFloatColor:@"EE7600"];
    dianPing.font = [UIFont systemFontOfSize:16];
    dianPing.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:dianPing];
    
    levelImage = [[UIImageView alloc] initWithFrame:CGRectMake(10 + (mainWidth - 20)/4, 40 + mainHeight/2 ,(mainWidth - 20)*0.75, 20)];
    [self.view addSubview:levelImage];

    
}

-(MyWorkDetailVC *)initWithWorkInfo:(NSString*)workEffectDate workId:(NSString*)workId workRate:(NSString*)workRate workNo:(NSString*)workNo workCourseNo:(NSString*)workCourseNo workBranchNo:(NSString *)workBranchNo workComments:(NSString *)workComments workIconId:(NSString *)workIconId  workIconFileId:(NSString *)workIconFileId workIconName:(NSString*)workIconName
{
    
    image = [NSString stringWithFormat:@"fp=%@&id=%@",workIconFileId,workIconId];

    workInfoEffectDate = workEffectDate;
    workInfoId = workId;
    workInfoRate = workRate;
    workInfoNo =  workNo;
    workInfoCourseNo = workCourseNo;
    workInfoBranchNo = workBranchNo;
    workInfoComments = workComments;
    workInfoIconId =  workIconId;
    workInfoIconFileId = workIconFileId;
    workInfoIconName = workIconName;
    
    return self;
}



@end