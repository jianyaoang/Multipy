//
//  ajyViewController.m
//  Multiply
//
//  Created by Jian Yao Ang on 3/10/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import "ajyViewController.h"

@interface ajyViewController ()
@property (strong, nonatomic) IBOutlet UITextField *myNumber;
@property (strong, nonatomic) IBOutlet UILabel *myMultiplier;
@property (strong, nonatomic) IBOutlet UILabel *myAnswer;
@property (strong, nonatomic) IBOutlet UISlider *valueSlider;
@property (nonatomic, getter=isContinuous) BOOL continuous;


@end

@implementation ajyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    
//    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc]
//                                           initWithTarget:self
//                                           action:@selector(hideKeyBoard)];
//    
//    [self.view addGestureRecognizer:tapGesture];
//    
    
    
}

- (IBAction)onCalculateButtonPressed:(id)sender
{
    
    self.valueSlider.continuous = YES;
//    float valueSliderValue = self.valueSlider.value;
    
    //NSString *retrievedText = self.myNumber.text;
    // 1. retrieve text from myMultiplier
    NSString *retrievedText = self.myNumber.text;
    // 2. convert that to int
    // 3. assign it to a local variable
    int myNumberNumber = [retrievedText intValue];
   
    // 1. retrieve text from myMultiplier
    NSString *retrievedMultiplierText = self.myMultiplier.text;
    // 2. convert that to int
    // 3. assign it to a local variable
    int myMultiplierNumber = [retrievedMultiplierText intValue];
    
    int product = myMultiplierNumber * myNumberNumber;
    
    self.myAnswer.text = [NSString stringWithFormat:@"%d", product];
    
    if (product > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }
    else
    {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    [self.myNumber resignFirstResponder];
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.myNumber resignFirstResponder];
}

- (IBAction)changingSliderValue:(UISlider *)sender
{
    int discreteValue = roundl([sender value]);
    self.myMultiplier.text = [NSString stringWithFormat:@"%d", discreteValue];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
