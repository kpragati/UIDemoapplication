//
//  LoginViewController.m
//  UIDemo
//
//  Created by Felix-Madhuri on 06/03/17.
//  Copyright © 2017 com.felix-its. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor redColor];
    
    
//    _container=[[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    
//    _actualimage=[UIImage imageNamed:@"1"];
//    
//    _container.image=_actualimage;
//    
//    [self.view addSubview:_container];
//    
//

    _usernamelbl=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 150, 50)];
    _usernamelbl.text=@"Username";
    _usernamelbl.textColor=[UIColor greenColor];
    [self.view addSubview:_usernamelbl];
    
    
    
    _loginbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _loginbtn.frame=CGRectMake(100, 200, 150, 50);
    
    [_loginbtn setTitle:@"Login" forState:UIControlStateNormal];
    [_loginbtn setTitle:@"Selected" forState:UIControlStateHighlighted];
    _loginbtn.tintColor=[UIColor yellowColor];
    [_loginbtn addTarget:self action:@selector(btnsclick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_loginbtn];
    
    _cancelbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _cancelbtn.frame=CGRectMake(100, 250, 150, 50);
    [_cancelbtn setTitle:@"Cancel" forState:UIControlStateNormal];
    
    [_cancelbtn addTarget:self action:@selector(btnsclick:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:_cancelbtn];
    
    _segment=[[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"RED",@"BLUE",@"GREEN",@"WHITE", nil]];
    _segment.frame=CGRectMake(50, 300, 250, 50);
    _segment.tintColor=[UIColor yellowColor];
    
    [_segment addTarget:self action:@selector(updatecolor) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_segment];
    
    _switch1=[[UISwitch alloc]initWithFrame:CGRectMake(100, 360, 50, 50)];
    
    [_switch1 addTarget:self action:@selector(switchchange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_switch1];
    
    
    _slider=[[UISlider alloc]init];
    _slider.frame=CGRectMake(50, 450, 250, 40);
    _slider.minimumValue=1;
    _slider.maximumValue=100;
    _slider.minimumTrackTintColor=[UIColor yellowColor];
    _slider.maximumTrackTintColor=[UIColor greenColor];
    [_slider addTarget:self action:@selector(sliderchange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
    
    _tf=[[UITextField alloc]initWithFrame:CGRectMake(50, 50, 200, 30)];
    _tf.borderStyle=UITextBorderStyleRoundedRect;
    _tf.keyboardAppearance=UIKeyboardAppearanceAlert;
    _tf.keyboardType=UIKeyboardTypeEmailAddress;
    _tf.returnKeyType=UIReturnKeyEmergencyCall;
    
    _tf.delegate=self;
    
    [self.view addSubview:_tf];
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    NSLog(@"return btn click");
    
    return YES;
}

-(void)sliderchange
{
    NSLog(@"%.f",_slider.value);
}

-(void)switchchange
{
    if(_switch1.on)
        NSLog(@"Switch on");
    else
        NSLog(@"switch off");
}



-(void)updatecolor
{
    switch ( _segment.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor=[UIColor redColor];
            break;
        case 1:
            self.view.backgroundColor=[UIColor blueColor];
            break;
        case 2:
            self.view.backgroundColor=[UIColor greenColor];
            break;
        case 3:
            self.view.backgroundColor=[UIColor whiteColor];
            break;
        default:
            break;
    }
   
}

-(void)btnsclick:(id)sender
{
    if(sender==_loginbtn)
        NSLog(@"login btn click");
    else
        NSLog(@"cancel btn click");
}

//-(void)btnclick
//{
//    NSLog(@"Btn click");
//}
//
//-(void)cancelbtnclik
//{
//    NSLog(@"Cancel btn click");
//}


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
