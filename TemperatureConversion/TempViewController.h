//
//  TempViewController.h
//  TemperatureConversion
//
//  Created by Richard Huang on 10/6/13.
//  Copyright (c) 2013 Rivi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TempViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *fahrenheitTextField;
@property (nonatomic, weak) IBOutlet UITextField *celciusTextField;
@property (nonatomic, weak) IBOutlet UIButton *convertButton;


@end
