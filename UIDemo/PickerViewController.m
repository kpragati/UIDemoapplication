//
//  PickerViewController.m
//  UIDemo
//
//  Created by Felix-Madhuri on 09/03/17.
//  Copyright © 2017 com.felix-its. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor orangeColor];
    
    _picker=[[UIPickerView alloc]initWithFrame:CGRectMake(0, 50, 320, 568)];
    _picker.delegate=self;
    _picker.dataSource=self;
    
    [self.view addSubview:_picker];
    
//    _cityarray=[[NSMutableArray alloc]initWithObjects:@"Pune",@"Mumbai",@"Nagpur",@"Delhi",@"Kolkata",@"Banglore", nil];
//    
//    _colorarray=[[NSMutableArray alloc]initWithObjects:@"red",@"blue",@"green",@"orange",@"white",@"black",@"brown",@"gray",@"magenta",@"cyan", nil];
//    
//    _label=[[UILabel alloc]initWithFrame:CGRectMake(50, 350, 250, 50)];
//    
//    [self.view addSubview:_label];
//
    
    _imgarray=[[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3", nil];
    
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _imgarray.count;
}
-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UIImageView *imgview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[_imgarray objectAtIndex:row]]];
    
    return imgview;
}
//-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
//{
//    if(component==0)
//        return [_cityarray objectAtIndex:row];
//    else
//        return [_colorarray objectAtIndex:row];
//
//}
//
//-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
//{
//    int row1=[_picker selectedRowInComponent:0];
//    int row2=[_picker selectedRowInComponent:1];
//    
//    NSString *str1=[_cityarray objectAtIndex:row1];
//    NSArray *str2=[_colorarray objectAtIndex:row2];
//    
//    _label.text=[NSString stringWithFormat:@"%@   %@",str1,str2];
//    
//    switch (row2) {
//        case 0:
//            self.view.backgroundColor=[UIColor redColor];
//            break;
//        case 1:
//            self.view.backgroundColor=[UIColor blueColor];
//            break;
//        case 2:
//            self.view.backgroundColor=[UIColor greenColor];
//            break;
//        case 3:
//            self.view.backgroundColor=[UIColor orangeColor];
//            break;
//        case 4:
//            self.view.backgroundColor=[UIColor whiteColor];
//            break;
//        case 5:
//            self.view.backgroundColor=[UIColor blackColor];
//            break;
//        case 6:
//            self.view.backgroundColor=[UIColor brownColor];
//            break;
//        case 7:
//            self.view.backgroundColor=[UIColor grayColor];
//            break;
//        case 8:
//            self.view.backgroundColor=[UIColor magentaColor];
//            break;
//        case 9:
//            self.view.backgroundColor=[UIColor cyanColor];
//            break;
//            
//            
//        default:
//            break;
//    }
//    
//}
//-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
//    
//    if(component==0)
//        return 50;
//    else
//        return 270;
//}
-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 560;
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
