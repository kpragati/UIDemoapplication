//
//  TableViewController.m
//  UIDemo
//
//  Created by Felix-Madhuri on 16/03/17.
//  Copyright © 2017 com.felix-its. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _table=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    _table.delegate=self;
    _table.dataSource=self;
    [self.view addSubview:_table];
    
       _cityarray=[[NSMutableArray alloc]initWithObjects:@"Pune",@"Mumbai",@"Nagpur",@"Delhi",@"Kolkata",@"Banglore", nil];
    
        _colorarray=[[NSMutableArray alloc]initWithObjects:@"red",@"blue",@"green",@"orange",@"white",@"black",@"brown",@"gray",@"magenta",@"cyan", nil];
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section==0)
        return _cityarray.count;
    else
        return _colorarray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    if(indexPath.section==0)
    {
        cell.textLabel.text=[_cityarray objectAtIndex:indexPath.row];
        cell.detailTextLabel.text=@"Cities..";
    }
    else
    {
        cell.textLabel.text=[_colorarray objectAtIndex:indexPath.row];
        cell.detailTextLabel.text=@"Colors..";
    }
    return cell;
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
