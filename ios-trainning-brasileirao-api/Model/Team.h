//
//  Team.h
//  ios-trainning-brasileirao-api
//
//  Created by Treinamento Mobile on 10/29/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface Team : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *logo_url;

@end
