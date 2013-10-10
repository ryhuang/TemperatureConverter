//
//  TempViewController.m
//  TemperatureConversion
//
//  Created by Richard Huang on 10/6/13.
//  Copyright (c) 2013 Rivi. All rights reserved.
//

#import "TempViewController.h"


@interface TempViewController ()

- (void)updateCelsius;
- (void)updateFahrenheit;
- (IBAction)onTap:(id)sender;
- (IBAction)onConvertClick:(id)sender;
- (IBAction)fahrenheitDidEnd:(id)sender;
- (IBAction)celsiusDidEnd:(id)sender;

@end

@implementation TempViewController

bool fahrenheit = TRUE;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Temperature";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.fahrenheitTextField.delegate = self;
    self.celciusTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Public methods

- (void)updateCelsius {
    // Take what's in the Fahrenheit field and update the Celsius field
    float fValue = [self.fahrenheitTextField.text floatValue];
    float cValue = (fValue - 32)/1.8;
    
    self.celciusTextField.text = [NSString stringWithFormat:@"%0.1f",cValue];
}

- (void)updateFahrenheit {
    // Take what's in the Celsius field and update the Fahrenheit field
    float cValue = [self.celciusTextField.text floatValue];
    float fValue = cValue * 1.8 + 32;
    
    self.fahrenheitTextField.text = [NSString stringWithFormat:@"%0.1f",fValue];
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)onConvertClick:(id)sender {
    if (fahrenheit) {
        [self updateCelsius];
    }
    else {
        [self updateFahrenheit];
    }
}

- (IBAction)fahrenheitDidEnd:(id)sender {
    fahrenheit = TRUE;
}

- (IBAction)celsiusDidEnd:(id)sender {
    fahrenheit = FALSE;
}


@end
