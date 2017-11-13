//
//  ParksTableViewCell.h
//  FloridaStateParks
//
//  Created by Administrator on 11/12/17.
//  Copyright © 2017 Albert Diaz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParksTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *parkImageView;
@property (weak, nonatomic) IBOutlet UILabel *parkName;
@property (weak, nonatomic) IBOutlet UILabel *parkLocation;
@end
