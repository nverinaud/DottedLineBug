//
//  ViewController.m
//  DottedLineBug
//
//  Created by Nicolas Verinaud on 28/03/14.
//  Copyright (c) 2014 Nicolas VERINAUD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderValueChanged:(UISlider *)sender
{
	UIColor *color = [UIColor colorWithHue:sender.value
								saturation:1
								brightness:1
									 alpha:1];
	self.label.textColor = color;
}

@end
