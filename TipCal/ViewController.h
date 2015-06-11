//
//  ViewController.h
//  TipCal
//
//  Created by Chary Tu on 6/10/15.
//  Copyright (c) 2015 chary tu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLable;
@property (weak, nonatomic) IBOutlet UILabel *totalLable;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

- (IBAction)tapControl:(id)sender;


@end

