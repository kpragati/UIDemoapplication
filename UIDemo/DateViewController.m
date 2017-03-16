//
//  DateViewController.m
//  UIDemo
//
//  Created by Felix-Madhuri on 15/03/17.
//  Copyright © 2017 com.felix-its. All rights reserved.
//

#import "DateViewController.h"

@interface DateViewController ()

@end

@implementation DateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    _datepicker=[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 50, 320, 300)];
    
    _datepicker.datePickerMode=UIDatePickerModeDate;
    
    [_datepicker addTarget:self action:@selector(selectDate) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_datepicker];
}

-(void)selectDate
{
    NSDateFormatter *format=[[NSDateFormatter alloc]init];
    
    [format setDateFormat:@"dd-MM-YYYY   hh-mm-a"];
    
   NSString *result = [format stringFromDate:_datepicker.date];
    
    NSLog(@"%@",result);
    
//    _alert=[[UIAlertView alloc]initWithTitle:@"ALertView" message:result delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
//    
//    [_alert show];
    _actionsheet=[[UIActionSheet alloc]initWithTitle:result delegate:self cancelButtonTitle:@"cancel" destructiveButtonTitle:@"Done" otherButtonTitles:nil, nil];
    
    [_actionsheet showInView:self.view];
    
    
}
//-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    if(buttonIndex==0)
//        NSLog(@"Cancel btn click");
//    else
//        NSLog(@"Ok btn click");
//}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex==0)
        NSLog(@"Done btn click");
    else
        NSLog(@"Cancel btn click");
    

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
