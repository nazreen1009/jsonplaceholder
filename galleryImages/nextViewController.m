//
//  nextViewController.m
//  galleryImages
//
//  Created by IMRAN ISMAIL on 10/10/15.
//  Copyright (c) 2015 Nazreen. All rights reserved.
//

#import "nextViewController.h"

#define JSON_FILE_URL @"http://jsonplaceholder.typicode.com/photos"

@interface nextViewController ()
{
        NSMutableArray *array;

//@property(nonatomic, strong)NSURLConnection *connection;
//@property(nonatomic, strong)NSMutableData *webdata;
}
@end


@implementation nextViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //[self getData];
   // array = [[NSMutableArray alloc]initWith];
   // [collectionView reloadData];
    NSLog(@"control determined");
}

/*
-(void)getData
{
    [_activyIndicator startAnimating];
    NSURL *url = [NSURL URLWithString:@"http://jsonplaceholder.typicode.com/photos"];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    
    _connection = [NSURLConnection connectionWithRequest:requestURL delegate:self];
    if (_connection) {
        _webdata = [[NSMutableData alloc]init];
    }


    -(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
    {
        [_webdata setLength:0];
    }
    -(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
    {
        [_webdata appendData:data];
        
    }*/
    /*
    -(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
    {
        NSLog(@"Fail With error");
    }
    -(void)connectionDidFinishLoading:(NSURLConnection *)connection
    {
        [_activyIndicator startAnimating];
        NSDictionary *allDataDictionary =[NSJSONSerialization JSONObjectWithData:_webdata   options:kNilOptions  error:nil];
        NSDictionary *currentShowDictionary = [allDataDictionary objectForKey:@"Current_Show"];
        
        NSArray *photoArray =[currentShowDictionary objectForKey:@"Photos"];
        for (NSDictionary *diction in photoArray) {
            NSDictionary *photo_urlDictionary = [diction objectForKey:@"photo_url"];
            // NSLog(@"%@",photo_urlDictionary);
            NSURL *collectionURL = [NSURL URLWithString:[photo_urlDictionary objectForKey:@"url"]];
            
            
            
            
            NSData *colectionImageData = [NSData dataWithContentsOfURL:collectionURL];
            
            UIImage *collectionImage = [UIImage imageWithData:colectionImageData];
            [array addObject:collectionImage];
            NSLog(@"%@",array);
            
            
        }

        
        -(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
            return 1;
        }
        -(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
        {
            return [array count];
        }
        -(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
        {
            ImageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"pictureCell" forIndexPath:indexPath];
            NSString *myImageString = [array objectAtIndex:indexPath.row];
            cell.pictureImageView.image = [UIImage imageNamed:myImageString];
            
            return cell;
        }*/
@end

