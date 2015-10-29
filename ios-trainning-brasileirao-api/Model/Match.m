//
//  Match.m
//  ios-trainning-brasileirao-api
//
//  Created by Treinamento Mobile on 10/29/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "Match.h"

@implementation Match

+ (NSDictionary *) JSONKeyPathsByPropertyKey{
    return @{
             @"home_team_score":@"home_team_score",
             @"away_team_score":@"away_team_score",
             @"place":@"place",
             @"round":@"round",
             @"away_team":@"away_team",
             @"home_team":@"home_team",
             @"home_team_logo_url":@"home_team_logo_url",
             @"away_team_logo_url":@"away_team_logo_url"
             
             };
}

@end
