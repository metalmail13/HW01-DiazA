//
//  ParksTableViewController.m
//  FloridaStateParks
//
//  Created by Administrator on 11/12/17.
//  Copyright © 2017 Albert Diaz. All rights reserved.
//

#import "ParksTableViewController.h"
#import "Parks.h"
#import "ParksTableViewCell.h"
#import "ParkDetailsViewController.h"


@interface ParksTableViewController ()
@property (strong, nonatomic) NSMutableArray* floridaStateParks;
@end

@implementation ParksTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Park Details
    Parks *park1= [[Parks alloc]init];
    park1.name = @"Alafia River State Park";
    park1.parkYear = @"1996";
    park1.location = @"Hillsborough";
    park1.address = @"14326 S County Rd 39, Lithia, FL 33547";
    park1.parkImage = [UIImage imageNamed: @"ParkImages/small-Alafia_Springs_State_Park.jpg"];
    park1.details = @"Alafia River State Park is a Florida State Park, located near Picnic in Hillsborough County in central Florida, 10 miles southeast of Tampa on County Road 39. Even before it became a park, the area, and particularly Hurrah Lake, was the center of leisure activities since the early 1880s.";
    
    Parks *park2= [[Parks alloc]init];
    park2.name = @"Avalon State Park";
    park2.parkYear = @"1987";
    park2.location = @"St. Lucie";
    park2.address = @"905 Shorewinds Dr, Fort Pierce, FL 34949";
    park2.parkImage = [UIImage imageNamed: @"ParkImages/small-Avalon_State_Park.jpg"];
    park2.details = @"Avalon has more than a mile of increasingly rare undeveloped beachfront. The park provides habitat for many species of wildlife. Threatened and endangered sea turtles such as the loggerhead, Atlantic green and leatherback nest on the beach during the spring and summer. Dune crossovers protect the fragile dune ecosystem.";
    
    Parks *park3= [[Parks alloc]init];
    park3.name = @"Cayo Costa State Park";
    park3.parkYear = @"1976";
    park3.location = @"Lee";
    park3.address = @"Captiva, FL 33924";
    park3.parkImage = [UIImage imageNamed: @"ParkImages/small-Cayo_Costa_State_Park.jpg"];
    park3.details = @"Cayo Costa State Park is a Florida State Park on Cayo Costa (formerly known as La Costa Island (Padilla Rancho), which is directly south of Boca Grande (Gasparilla Island), 12 miles (19 km) west of Cape Coral and just north of North Captiva Island. The park is accessible only by charter boat (with or without captain), private boat, ferry or helicopter.";
    
    Parks *park4= [[Parks alloc]init];
    park4.name = @"Big Talbot Island State Park";
    park4.parkYear = @"1949";
    park4.location = @"Duval";
    park4.address = @"State Road A1A North, Jacksonville, FL 32226";
    park4.parkImage = [UIImage imageNamed: @"ParkImages/small-Big_Talbot_Island_State_Park.jpg"];
    park4.details = @"Big Talbot Island State Park is a nature preserve and a location for nature study, bird–watching, or photography. Other activities include hiking, bicycling, fishing, boating, canoeing, kayaking, and picnicking. Amenities include picnic pavilions, nature trails, a fishing pier, a boat ramp, bike trails and beaches.";
    
    Parks *park5= [[Parks alloc]init];
    park5.name = @"Falling Waters State Park";
    park5.parkYear = @"1862";
    park5.location = @"Washington";
    park5.address = @"1130 State Park Rd, Chipley, FL 32428";
    park5.parkImage = [UIImage imageNamed: @"ParkImages/small-Falling_Waters_State_Park.jpg"];
    park5.details = @"The sinkholes at Falling Waters State Park were used as a hideout by Indian warriors fighting against Andrew Jackson during the Seminole Wars. The park is the site of a Civil War era gristmill. The gristmill was powered by the waterfall in Falling Waters Sink. Later, in 1891, a distillery was constructed on the site. The park is also the site of the first oil well in Florida.";
    
    Parks *park6= [[Parks alloc]init];
    park6.name = @"Fort Cooper State Park";
    park6.parkYear = @"1977";
    park6.location = @"Citrus";
    park6.address = @"3100 Old Floral City Rd, Inverness, FL 34450";
    park6.parkImage = [UIImage imageNamed: @"ParkImages/small-Fort_Cooper_State_Park.jpg"];
    park6.details = @"Over 700 acres of Nature at its best, Fort Cooper State Park offers a spot for relaxing, hiking, nature study and learning about history. Lake Holathlikaha is popular for fishing and boating, although private boats are prohibited, canoes are available for rent when water levels and conditions permit.  As part of the Great Florida Birding Trail, the park offers nearly five miles of self-guided trails with excellent bird and wildlife viewing.";

    
    
    Parks *park7= [[Parks alloc]init];
    park7.name = @"Gamble Plantation State Park";
    park7.parkYear = @"1927";
    park7.location = @"Manatee";
    park7.address = @"3708 Patten Ave, Ellenton, FL 34222";
    park7.parkImage = [UIImage imageNamed: @"ParkImages/small-Gamble_Plantation_Historic_State_Park.jpg"];
    park7.details = @"The Judah P. Benjamin Confederate Memorial at Gamble Plantation Historic State Park, also known as the Gamble Mansion or Gamble Plantation, is a Florida State Park which is home to the Florida Division United Daughters of the Confederacy. It consists of the antebellum mansion developed by its first owner, Major Robert Gamble; a 40,000-gallon cistern to provide the household with fresh water; and 16 acres of the former sugarcane slave labor camp.";
    
    Parks *park8= [[Parks alloc]init];
    park8.name = @"Highlands Hammock State Park";
    park8.parkYear = @"1931";
    park8.location = @"Highlands";
    park8.address = @"5931 Hammock Rd, Sebring, FL 33872";
    park8.parkImage = [UIImage imageNamed: @"ParkImages/small-Highlands_Hammock_State_Park.jpg"];
    park8.details = @"One of Florida's oldest parks, opening to the public in 1931, Highlands Hammock was established when local citizens came together to promote the hammock as a candidate for national park status. During the Great Depression, prior to World War II, the Civilian Conservation Corps (CCC) developed additional park facilities and the beginnings of a botanical garden.  Acquired by the state in 1935 it now has 15 distinct natural communities.";
    
    Parks *park9= [[Parks alloc]init];
    park9.name = @"Jonathan Dickinson State Park";
    park9.parkYear = @"1950";
    park9.location = @"Martin";
    park9.address = @"16450 SE Federal Hwy, Hobe Sound, FL 33455";
    park9.parkImage = [UIImage imageNamed: @"ParkImages/small-Jonathan_Dickinson_State_Park.jpg"];
    park9.details = @"The park includes the Elsa Kimbell Environmental Education and Research Center and a variety of natural habitats: sand pine scrub, pine flatwoods, mangroves, and river swamps. The Loxahatchee River, designated a National Wild and Scenic River in 1985 (the first in Florida), runs through the park. The park is also along the Ocean to Lake Trail.";
    
    Parks *park10= [[Parks alloc]init];
    park10.name = @"Lake Louisa State Park";
    park10.parkYear = @"1974";
    park10.location = @"Lake";
    park10.address = @"7305 US Highway 27, Clermont, FL 34714";
    park10.parkImage = [UIImage imageNamed: @"ParkImages/small-Lake_Louisa_State_Park.jpg"];
    park10.details = @"A short drive from Orlando, this 4,500 acre park is noted for its beautiful lakes, rolling hills and scenic landscapes. Lake Louisa, the largest in a chain of 13 lakes, is designated as an Outstanding Florida Water Way. Lake Louisa, Hammond Lake and Dixie Lake, the park’s most accessible lakes, provide opportunities for fishing, canoeing and kayaking.";
    
    Parks *park11= [[Parks alloc]init];
    park11.name = @"Manatee Springs State Park";
    park11.parkYear = @"1949";
    park11.location = @"Levy";
    park11.address = @"11650 NW 115 St, Chiefland, FL 32626";
    park11.parkImage = [UIImage imageNamed: @"ParkImages/small-Manatee_Springs_State_Park.jpg"];
    park11.details = @"The first-magnitude spring at this park produces an average of 100 million gallons of clear, cool water daily. In winter, West Indian manatees swim upriver to the warmer waters of the springs. Popular for snorkeling and scuba diving, the headwaters of the spring are also a great spot for swimming. The spring run forms a sparkling stream that meanders through hardwood wetlands to the Suwannee River. Canoeing and kayaking is available all year round!";
    
    // Add parks to array
    self.floridaStateParks = [NSMutableArray arrayWithObjects: park1, park2, park3, park4, park5, park6, park7, park8, park9, park10, park11, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

// Number of sections in Table View
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// Number of rows in Section(based on array size)
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.floridaStateParks.count;
}

// Prepare to return the cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Provide cellIdentifier with ID of Park Info Cell
    static NSString* cellIdentifier = @"parkInfoCell";
    
    // Obtain the Cell
    ParksTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier forIndexPath: indexPath];
    
    // Obtain the Park Object details for the selected row index
    Parks *item = [self.floridaStateParks objectAtIndex:indexPath.row];
    
    // Configure the cell
    cell.parkName.text = item.name;
    [cell.parkName setFont:[UIFont fontWithName:@"Arial-BoldMT" size:15]];
    cell.parkLocation.text = item.location;
    cell.parkImageView.image = item.parkImage;
    
    // Return the cell
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    if([[segue identifier] isEqualToString: @"sgeShowParkDetail"])
    {
        ParkDetailsViewController *detailVC = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        Parks* item = [self.floridaStateParks objectAtIndex:myIndexPath.row];
        detailVC.selectedPark = item;
    }

    // Pass the selected object to the new view controller.
}


@end
