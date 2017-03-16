//
//  DateViewController.h
//  UIDemo
//
//  Created by Felix-Madhuri on 15/03/17.
//  Copyright © 2017 com.felix-its. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DateViewController : UIViewController<UIAlertViewDelegate,UIActionSheetDelegate>


@property(nonatomic,retain)UIDatePicker *datepicker;

@property(nonatomic,retain)UIAlertView *alert;

@property(nonatomic,retain)UIActionSheet *actionsheet;





@end
