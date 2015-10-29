//
//  Team.m
//  ios-trainning-brasileirao-api
//
//  Created by Treinamento Mobile on 10/29/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "Team.h"

@implementation Team

+ (NSDictionary *) JSONKeyPathsByPropertyKey{
    
    return @{
             @"name":@"name",
             @"logo_url":@"logo_url"
             };
}

@end
