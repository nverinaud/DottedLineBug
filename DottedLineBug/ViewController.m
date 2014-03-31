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

@property (nonatomic, copy) NSString *text;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.text = self.label.text;
}


- (IBAction)sliderValueChanged:(UISlider *)sender
{
	UIColor *color = [UIColor colorWithHue:sender.value
								saturation:1
								brightness:1
									 alpha:1];
	
	self.label.textColor = color;
	
	/* The following works as a workaround. */
//	NSAttributedString *text = [[NSAttributedString alloc] initWithString:self.text attributes:@{ NSForegroundColorAttributeName : color }];
//	self.label.attributedText = text;
}

@end
