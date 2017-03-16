//
//  LoginViewController.h
//  UIDemo
//
//  Created by Felix-Madhuri on 06/03/17.
//  Copyright © 2017 com.felix-its. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LoginViewController : UIViewController <UITextFieldDelegate>


@property(nonatomic,retain)UILabel *usernamelbl;

@property(nonatomic,retain)UIButton *loginbtn,*cancelbtn;

@property(nonatomic,retain)UISegmentedControl *segment;

@property(nonatomic,retain)UISwitch *switch1;

@property(nonatomic,retain)UISlider *slider;

@property(nonatomic,retain)UIImage *actualimage;

@property(nonatomic,retain)UIImageView *container;

@property(nonatomic,retain)UITextField *tf;









@end
