//
//  TitleDC.h
//  ios-trainning-brasileirao-api
//
//  Created by Treinamento Mobile on 10/29/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TitleDC : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *hometeamLabel;
@property (nonatomic, weak) IBOutlet UILabel *awayteamLabel;
@property (nonatomic, weak) IBOutlet UILabel *placeLabel;
@property (nonatomic, weak) IBOutlet UILabel *roundLabel;
@property (nonatomic, weak) IBOutlet UILabel *hometeamscoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *awayteamscoreLabel;
@property (nonatomic, weak) IBOutlet UIImageView *homeImage;
@property (nonatomic, weak) IBOutlet UIImageView *awayImage;

@end
