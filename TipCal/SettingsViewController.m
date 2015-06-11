//
//  SettingsViewController.m
//  TipCal
//
//  Created by Chary Tu on 6/11/15.
//  Copyright (c) 2015 chary tu. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getSettingsValues];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)setIdValue:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

    NSInteger  selectedValue = self.SettingsControl.selectedSegmentIndex;
    [defaults setInteger:selectedValue forKey:@"setting"];

    [defaults synchronize];
    
}

-(void)getSettingsValues{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger  selectedValue = [defaults integerForKey:@"setting"];
    self.SettingsControl.selectedSegmentIndex = selectedValue;

}
@end
