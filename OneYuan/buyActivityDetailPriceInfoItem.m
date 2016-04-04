//
//  buyActivityDetailPriceInfoItem.m
//  OneYuan
//
//  Created by CaniggiaGoal on 16/3/5.
//  Copyright © 2016年 Peter. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "buyActivityDetailPriceInfoItem.h"
#import "AppDelegate.h"

@interface buyActivityDetailPriceInfoItem ()
{
    
    UIImageView *imgPro;
    
    UILabel     *lblTitle;
    UILabel     *lblPrice;
    
    UILabel    *lblBuyNum;
    UILabel    *lblclassRoom;
    
    
    UIProgressView  *progress;
    
    UILabel         *lblNowNum;
    UILabel         *lblAllNum;
    UILabel         *lblLeftNum;
}

@end


@implementation buyActivityDetailPriceInfoItem

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        
        lblTitle = [[UILabel alloc] init ];
        
        lblTitle.font = [UIFont systemFontOfSize:15];
        
        [self addSubview:lblTitle];
        
        
        lblPrice = [[UILabel alloc] init ];
        
        lblPrice.font = [UIFont systemFontOfSize:15];
        lblPrice.textColor = [UIColor redColor];
        
        [self addSubview:lblPrice];
        
        
    }
    return self;
}

- (void)setPriceInfoItem:(NSString*)activityPrice;

{
    
    lblTitle.text = @"应付金额";
    
    lblTitle.frame = CGRectMake(10, 15, 100, 20);
    
    NSString *price = [[NSString alloc] init];
    
    price = [NSString stringWithFormat:@"¥ %@",activityPrice];
    
    lblPrice.text = price;
    
    lblPrice.frame = CGRectMake(mainWidth - 60, 15, 100, 20);
    
}

@end