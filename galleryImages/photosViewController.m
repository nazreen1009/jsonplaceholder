//
//  PeopleDetailsViewController.m
//  galleryApp
//
//  Created by IMRAN ISMAIL on 10/10/15.
//  Copyright (c) 2015 Nazreen. All rights reserved.
//

#import "photosViewController.h"
#import "nextViewController.h"

@interface photosViewController ()

@end

@implementation photosViewController


- (NSString *)name {
    return [NSString stringWithFormat:@"%@", self.details[@"id"]];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
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
    
    return 3;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    
    switch (indexPath.row) {
        case 0:{
            cell.textLabel.text = [self name];
            cell.detailTextLabel.text = @"Id";
            break;
        }
        case 1:{
            NSString *title = [_details objectForKey:@"title"];
            cell.textLabel.text = title;
            cell.detailTextLabel.text = @"title";
            break;
        }
        case 2:{
            UIButton *photoButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            photoButton.frame = CGRectMake(300.0f, 5.0f, 75.0f, 30.0f);
            
            //photoButton.backgroundColor = [UIColor grayColor];
            [photoButton setTitle:@"Photos >" forState:UIControlStateNormal];
            [cell addSubview:photoButton];
            [photoButton addTarget:self
                                action:@selector(showPhoto:)
                      forControlEvents:UIControlEventTouchUpInside];
        }
            
        default:
            break;
    }
    return cell;
}
- (IBAction)showPhoto:(id)sender
{
    NSLog(@"Now control passed to next controller");
    nextViewController *obj =[[nextViewController alloc]initWithNibName:@"nextViewController" bundle:nil];
    [self.navigationController pushViewController:obj animated:YES];
    
   
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
