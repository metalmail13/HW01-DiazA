//
//  Parks.h
//  FloridaStateParks
//
//  Created by Administrator on 11/12/17.
//  Copyright © 2017 Albert Diaz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface Parks : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *location;
@property (strong, nonatomic) NSString *parkYear;
@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *details;
@property (strong, nonatomic) UIImage *parkImage;
@end
