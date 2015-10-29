//
//  TitleDC.m
//  ios-trainning-brasileirao-api
//
//  Created by Treinamento Mobile on 10/29/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "TitleDC.h"

@implementation TitleDC

- (void) layoutSubviews{
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(100, 60, 60, 32.5);
    float limgw = self.imageView.image.size.width;
    
    if (limgw > 0) {
        self.textLabel.frame = CGRectMake(55, self.textLabel.frame.origin.y, self.textLabel.frame.size.width, self.textLabel.frame.size.height);
        self.detailTextLabel.frame = CGRectMake(55, self.detailTextLabel.frame.origin.y, self.detailTextLabel.frame.size.width, self.detailTextLabel.frame.size.height);
    }
}

- (void) awakeFromNib {
    //
}

- (void) setSelected:(BOOL)selected animated: (BOOL) animated {
    [super setSelected:selected animated:animated];
}

@end
