//
//  PickerViewController.h
//  UIDemo
//
//  Created by Felix-Madhuri on 09/03/17.
//  Copyright © 2017 com.felix-its. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>

@property(nonatomic,retain)UIPickerView *picker;

@property(nonatomic,retain)NSMutableArray *cityarray,*colorarray,*imgarray;

@property(nonatomic,retain)UILabel *label;



@end
