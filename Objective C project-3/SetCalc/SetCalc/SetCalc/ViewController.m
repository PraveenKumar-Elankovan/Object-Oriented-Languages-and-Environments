//
//  ViewController.m
//  SetCalc
//
//  Created by PraveenKumar Elankovan on 06/04/14.
//  Copyright (c) 2014 UIC. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

@synthesize myTree1;
@synthesize myTree2;
@synthesize myTree3;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    myTree1 = [[BTree alloc]init];
    myTree2 = [[BTree alloc]init];
    myTree3 = [[BTree alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clearSet:(id)sender {
    myTree1 = [[BTree alloc]init];
    _output.text=@"Set S1 Cleared";
    
}
- (IBAction)add:(id)sender {
    int a;
    a= [_input.text integerValue];
    if (a == nil) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                        message:@"Please enter a single integer value to add" delegate:self cancelButtonTitle:@"Cancel"
                                              otherButtonTitles:@"OK", nil];
        [alert show];
        _input.text = nil;
    } else {
        [myTree1 addNum:a];
        _input.text = nil;
         _output.text = [NSString stringWithFormat:@"Element added to S1 successfully"];
    }

}

- (IBAction)display:(id)sender {
    _output.text = [NSString stringWithFormat:@"%@%@%@%@%@",[NSString stringWithFormat:@"Set1 : "],[myTree1 displayValues], [NSString stringWithFormat:@"    "], [NSString stringWithFormat:@"Set2 : "], [myTree2 displayValues]];

}

- (IBAction)switch:(id)sender {
 
    BTree* temp;
    temp = myTree1;
    myTree1 = myTree2;
    myTree2 = temp;
    _output.text = [NSString stringWithFormat:@"S1 and S2 are swapped successfully"];



}

- (IBAction)union:(id)sender {
    
    int i;
    id arrayElement;
    NSString *set2String = [myTree2 displayValues];
    NSArray *set2Array = [set2String componentsSeparatedByString:@" "];
    for( i=0 ; i< [set2Array count]; i++)
    {
        if([[set2Array objectAtIndex:i] isEqual:@" "])
            {}
        else if([set2String isEqual:@""])
        {}
        else
            {
        arrayElement = [set2Array objectAtIndex:i];
        [myTree1 addNum:[arrayElement integerValue]];
            }
    }
       _output.text = [NSString stringWithFormat:@"S1 U S2 is done and values are stored to S1"];

    
}
- (IBAction)save:(id)sender {
    int i;
    id arrayElement;
    myTree2 = [[BTree alloc]init];
    NSString *set1String = [myTree1 displayValues];
    NSArray *set1Array = [set1String componentsSeparatedByString:@" "];
    for( i=0 ; i< [set1Array count]; i++)
    {
        arrayElement = [set1Array objectAtIndex:i];
        if ([arrayElement  isEqual: @""]) {
            
        } else {
            [myTree2 addNum:[arrayElement integerValue]];
        }
        
    }
    _output.text = [NSString stringWithFormat:@"S1 is saved to S2"];
}

@end








//
//- (IBAction)switch:(id)sender {
//}
//- (IBAction)union:(id)sender {
//    [self display];
//}
//
//
//
//@end

