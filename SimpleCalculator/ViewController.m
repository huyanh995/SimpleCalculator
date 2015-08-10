//
//  ViewController.m
//  SimpleCalculator
//
//  Created by Huy Anh Nguyen on 8/5/15.
//  Copyright (c) 2015 Huy Anh Nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    isdecima=false;
    resultnumber=0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setResultWithNumber:(int)theNumber{
    if(!isdecima){
        displaynumber *= 10;
        displaynumber += theNumber;
        self.ketqua.text = [NSString stringWithFormat:@"%.0f", displaynumber];
    }
    else{
        self.ketqua.text = [self.ketqua.text stringByAppendingString:[NSString stringWithFormat:@"%d",theNumber]];
    }
    displaynumber = [self.ketqua.text floatValue];
}
- (void) operationWithNumber:(int)theNumber{
    isdecima = false;
    if(resultnumber==0)
        resultnumber = displaynumber;
    else{
        if(isdecima == true)self.ketqua.text = [NSString stringWithFormat:@"%.2f", resultnumber];
        if(isdecima == false) self.ketqua.text = [NSString stringWithFormat:@"%.0f", resultnumber];
        switch (operation) {
            case 1:
                resultnumber += displaynumber;
                break;
            case 2:
                resultnumber -= displaynumber;
                break;
            case 3:
                resultnumber *= displaynumber;
                break;
            case 4:
                resultnumber /= displaynumber;
                break;
            default:
                break;
        }
    }
    operation = theNumber;
    displaynumber = 0;
}


- (IBAction)CleanButton:(id)sender {
    
    operation = 0;
    displaynumber = 0;
    resultnumber = 0;
    isdecima = false;
    self.ketqua.text = [NSString stringWithFormat:@"%d", 0];
}

- (IBAction)OneButton:(id)sender {
    [self setResultWithNumber:1];
}

- (IBAction)TwoButton:(id)sender {
    [self setResultWithNumber:2];
}

- (IBAction)ThreeButton:(id)sender {
    [self setResultWithNumber:3];
}

- (IBAction)FourButton:(id)sender {
    [self setResultWithNumber:4];
}

- (IBAction)FiveButton:(id)sender {
    [self setResultWithNumber:5];
}

- (IBAction)SixButton:(id)sender {
    [self setResultWithNumber:6];
}

- (IBAction)SevenButton:(id)sender {
    [self setResultWithNumber:7];
}

- (IBAction)EightButton:(id)sender {
    [self setResultWithNumber:8];
}

- (IBAction)NineButton:(id)sender {
    [self setResultWithNumber:9];
}

- (IBAction)ZeroButton:(id)sender {
    [self setResultWithNumber:0];
}

- (IBAction)DotButton:(id)sender {
    isdecima = true;
    NSRange range = [self.ketqua.text rangeOfString:@"."];
    if(range.location == NSNotFound){
        self.ketqua.text = [self.ketqua.text stringByAppendingString:@"."];
    }
}

- (IBAction)DivideButton:(id)sender {
    if(resultnumber !=0){
        [self operationWithNumber:operation];
        if(isdecima == true)self.ketqua.text = [NSString stringWithFormat:@"%.2f", resultnumber];
        if(isdecima == false)self.ketqua.text = [NSString stringWithFormat:@"%.0f", resultnumber];
        displaynumber = [self.ketqua.text floatValue];
        resultnumber = 0;
    }
    [self operationWithNumber:4];
}

- (IBAction)MultiplyButton:(id)sender {
    if(resultnumber !=0){
        [self operationWithNumber:operation];
        if(isdecima == true)self.ketqua.text = [NSString stringWithFormat:@"%.2f", resultnumber];
        else self.ketqua.text = [NSString stringWithFormat:@"%.0f", resultnumber];
        displaynumber = [self.ketqua.text floatValue];
        resultnumber = 0;
    }
    [self operationWithNumber:3];
}

- (IBAction)PlusButton:(id)sender {
    if(resultnumber !=0){
        [self operationWithNumber:operation];
        if(isdecima == true)self.ketqua.text = [NSString stringWithFormat:@"%.2f", resultnumber];
        else self.ketqua.text = [NSString stringWithFormat:@"%.0f", resultnumber];
        displaynumber = [self.ketqua.text floatValue];
        resultnumber = 0;
    }
    [self operationWithNumber:1];}

- (IBAction)MinusButton:(id)sender {
    if(resultnumber !=0){
        [self operationWithNumber:operation];
        if(isdecima == true)self.ketqua.text = [NSString stringWithFormat:@"%.2f", resultnumber];
        else self.ketqua.text = [NSString stringWithFormat:@"%.0f", resultnumber];
        displaynumber = [self.ketqua.text floatValue];
        resultnumber = 0;
    }
    [self operationWithNumber:2];}

- (IBAction)EqualButton:(id)sender {
    [self operationWithNumber:operation];
    if(isdecima == true)self.ketqua.text = [NSString stringWithFormat:@"%.2f", resultnumber];
    if(isdecima == false) self.ketqua.text = [NSString stringWithFormat:@"%.0f", resultnumber];
    displaynumber = [self.ketqua.text floatValue];
    resultnumber = 0;
}

- (IBAction)DelButton:(id)sender {
    NSMutableString *string = [NSMutableString stringWithFormat:@"%@",self.ketqua.text];
    NSUInteger lengh = [string length];
    NSString *temp = [string substringToIndex:lengh-1];
    self.ketqua.text = [NSString stringWithFormat:@"%@",temp];
    displaynumber = [self.ketqua.text floatValue];
    
}
- (IBAction)PlusMinus:(id)sender {
        displaynumber = 0 - displaynumber;
        if(isdecima)
        self.ketqua.text = [NSString stringWithFormat:@"%.2f", displaynumber];
        else
        self.ketqua.text = [NSString stringWithFormat:@"%.0f", displaynumber];
    

}


@end
