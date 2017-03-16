//
//  TableViewController.h
//  UIDemo
//
//  Created by Felix-Madhuri on 16/03/17.
//  Copyright © 2017 com.felix-its. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain)UITableView *table;


@property(nonatomic,retain)NSMutableArray *cityarray,*colorarray;

@end
