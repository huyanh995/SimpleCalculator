//
//  ViewController.h
//  SimpleCalculator
//
//  Created by Huy Anh Nguyen on 8/5/15.
//  Copyright (c) 2015 Huy Anh Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
int operation;
double resultnumber;
double displaynumber;
bool isdecima;
int lengh;

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *ketqua;
- (void) setResultWithNumber: (int) theNumber;
- (void) operationWithNumber: (int) theNumber;
- (IBAction)CleanButton:(id)sender;
- (IBAction)OneButton:(id)sender;
- (IBAction)TwoButton:(id)sender;
- (IBAction)ThreeButton:(id)sender;
- (IBAction)FourButton:(id)sender;
- (IBAction)FiveButton:(id)sender;
- (IBAction)SixButton:(id)sender;
- (IBAction)SevenButton:(id)sender;
- (IBAction)EightButton:(id)sender;
- (IBAction)NineButton:(id)sender;
- (IBAction)ZeroButton:(id)sender;
- (IBAction)DotButton:(id)sender;
- (IBAction)DivideButton:(id)sender;
- (IBAction)MultiplyButton:(id)sender;
- (IBAction)PlusButton:(id)sender;
- (IBAction)MinusButton:(id)sender;
- (IBAction)EqualButton:(id)sender;
- (IBAction)DelButton:(id)sender;

- (IBAction)PlusMinus:(id)sender;

@end
