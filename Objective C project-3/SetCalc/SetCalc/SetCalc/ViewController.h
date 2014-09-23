//
//  ViewController.h
//  SetCalc
//
//  Created by PraveenKumar Elankovan on 06/04/14.
//  Copyright (c) 2014 UIC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Node.h"
#import "BTree.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *input;
@property (weak, nonatomic) IBOutlet UITextField *output;


- (IBAction)add:(id)sender;
- (IBAction)display:(id)sender;
- (IBAction)switch:(id)sender;
- (IBAction)union:(id)sender;
- (IBAction)save:(id)sender;
- (IBAction)clearSet:(id)sender;

@property (nonatomic,strong) BTree  * myTree1;
@property (nonatomic,strong) BTree  * myTree2;
@property (nonatomic,strong) BTree  * myTree3;

@end
