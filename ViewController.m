//
//  ViewController.m
//  PrimeiroApp
//
//  Created by Treinamento Mobile on 10/22/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "ViewController.h"
#import "Team.h"
#import "Match.h"
#import "TitleDC.h"
#import "AFNetworking.h"
#import <SDWebImage/UIImageView+WebCache.h>


@interface ViewController ()

@property (nonatomic, strong) NSArray *match;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://mockbrasileirao.herokuapp.com/api/matches" parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             
             NSArray *teamsParsed = [responseObject objectForKey:@"matches" ];
             NSError *error;
             self.match = [MTLJSONAdapter modelsOfClass:Match.class fromJSONArray:teamsParsed error:&error];
             
             [self.tableView reloadData];
             NSLog(@"Teste Match");
             
         } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", error);
         }];
}

- (void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.tableView deselectRowAtIndexPath:self.tableView.indexPathForSelectedRow animated:YES];
     NSLog(@"Teste viewDidAppear");
}

#pragma mark - Navigation

#pragma - UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
     NSLog(@"Teste TableViewCount");
     return self.match.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"Teste TableViewCell - Init");
    
    TitleDC *cell = [tableView dequeueReusableCellWithIdentifier:@"MatchIdentifier" forIndexPath:indexPath];
    
    Match *matchs = self.match[indexPath.row];
    
    cell.hometeamLabel.text = matchs.home_team.name;
    cell.awayteamLabel.text = matchs.away_team.name;
    
    NSString *homeScoreText = [NSString stringWithFormat:@"%@", matchs.home_team_score];
    cell.hometeamscoreLabel.text = homeScoreText;
    
    NSString *awayScoreText = [NSString stringWithFormat:@"%@", matchs.away_team_score];
    cell.awayteamscoreLabel.text = awayScoreText;
    
    
    cell.placeLabel.text = matchs.place;
    
    NSString *roundText = [NSString stringWithFormat:@"%@", matchs.round];
    cell.roundLabel.text = roundText;
    
    cell.homeImage.image = nil;
    cell.awayImage.image = nil;
    
    NSLog(@"Teste Table View Cell meio ");
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND,0), ^{
        
        dispatch_async( dispatch_get_main_queue(), ^{
            
            [cell.imageView sd_setImageWithURL:[NSURL URLWithString:matchs.home_team_logo_url.logo_url]];
            [cell.imageView sd_setImageWithURL:[NSURL URLWithString:matchs.away_team_logo_url.logo_url]];
            [cell setNeedsDisplay];
            
            NSLog(@"Teste Images");
            
            });
    
        });
    return cell;
}




@end
