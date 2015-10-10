//
//  PeopleListViewController.m
//  galleryApp
//
//  Created by IMRAN ISMAIL on 10/10/15.
//  Copyright (c) 2015 Nazreen. All rights reserved.
//

#import "albumsViewController.h"
#import "photosViewController.h"

#define JSON_FILE_URL @"http://jsonplaceholder.typicode.com/albums"

@interface albumsViewController ()
@property (strong, nonatomic) NSArray *names;
@property (strong, nonatomic) NSArray *data;
@end


@implementation albumsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Download JSON
    
    
    NSData *JSONData = [NSData dataWithContentsOfURL:[NSURL URLWithString:JSON_FILE_URL]];
    
    // Parse JSON
    NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:JSONData options:kNilOptions error:nil];
    self.data = jsonResult;
    NSMutableArray *_names = [NSMutableArray array];
    for (id item in jsonResult)
        [_names addObject:[NSString stringWithFormat:@"%@", item[@"id"]]];
    self.names = _names;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.names count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    cell.textLabel.text = self.names[indexPath.row];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
    photosViewController *detailViewController = [[photosViewController alloc] initWithStyle:UITableViewStyleGrouped];
    detailViewController.details = self.data[indexPath.row];
    [self.navigationController pushViewController:detailViewController animated:YES];
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

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */





@end
