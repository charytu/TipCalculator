//
//  ViewController.m
//  TipCal
//
//  Created by Chary Tu on 6/10/15.
//  Copyright (c) 2015 chary tu. All rights reserved.
//

#import "ViewController.h"
#import "SettingsViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateValues];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Settings" style:UIBarButtonItemStylePlain target:self action:@selector(onSettingsButton)];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapControl:(id)sender {
    [self.view endEditing:YES];
    [self updateValues];
    //[self onSettingsButton];
}

- (IBAction)settingControl:(id)sender {
}

-(void)updateValues{
    float billAmount = [self.billField.text floatValue];
    NSArray *tipValues = @[@(0.1),@(0.15),@(0.2)];
    float tipAmount = billAmount * [tipValues[self.tipControl.selectedSegmentIndex] floatValue];
    float totalAmount = tipAmount + billAmount;
    self.tipLable.text = [NSString stringWithFormat:@"%0.2f", tipAmount];
    self.totalLable.text=[NSString stringWithFormat:@"%0.2f",totalAmount];
}

-(void)onSettingsButton{
   [self.navigationController pushViewController:[[SettingsViewController alloc] init] animated:YES];
    
}
@end
