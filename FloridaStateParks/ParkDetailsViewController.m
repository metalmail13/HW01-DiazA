//
//  ParkDetailsViewController.m
//  FloridaStateParks
//
//  Created by Administrator on 11/12/17.
//  Copyright © 2017 Albert Diaz. All rights reserved.
//

#import "ParkDetailsViewController.h"
#import "Parks.h"

@interface ParkDetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *parkDetailImage;
@property (weak, nonatomic) IBOutlet UILabel *parkYearOpen;
@property (weak, nonatomic) IBOutlet UILabel *parkAddress;
@property (weak, nonatomic) IBOutlet UILabel *parkMoreDetails;
@end

@implementation ParkDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Load the selected park details
    self.parkAddress.text = self.selectedPark.address;
    self.parkYearOpen.text = self.selectedPark.parkYear;
    self.parkMoreDetails.text = self.selectedPark.details;
    self.parkDetailImage.image = self.selectedPark.parkImage;
    self.navigationItem.title = self.selectedPark.name;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
