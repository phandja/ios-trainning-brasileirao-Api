//
//  Match.h
//  ios-trainning-brasileirao-api
//
//  Created by Treinamento Mobile on 10/29/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "Team.h"

@interface Match : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) Team *home_team;
@property (nonatomic, copy) Team *away_team;
@property (nonatomic, copy) NSNumber *home_team_score;
@property (nonatomic, copy) NSNumber *away_team_score;
@property (nonatomic, copy) Team *home_team_logo_url;
@property (nonatomic, copy) Team *away_team_logo_url;
@property (nonatomic, copy) NSString *place;
@property (nonatomic, copy) NSNumber *round;

@end
