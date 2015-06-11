//
//  SettingsViewController.h
//  TipCal
//
//  Created by Chary Tu on 6/11/15.
//  Copyright (c) 2015 chary tu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *SettingsControl;
- (IBAction)setIdValue:(id)sender;

@end
