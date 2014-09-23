
//
//  Node.m
//  BinarySearchTree
//
//  Created by PraveenKumar Elankovan on 06/04/14.
//  Copyright (c) 2014 UIC. All rights reserved.
//

#import "Node.h"

@implementation Node

//Setter for value

- (void) setValue: (int) valueAdd;
{
    value = valueAdd;
}

//Getter for value
- (int) value;
{
    return value;
}

//Setter for left
- (void) setLeft: (Node *) leftChild;
{
    left = leftChild;
}

//Getter for left
- (Node *) left;
{
    return left;
}

// Setter for Right
- (void) setRight: (Node *) rightChild;
{
    right = rightChild;
}
//Getter for Right
- (Node *) right;
{
    return right;
}

//Creating a new node
- (Node *) initWithValue: (int) aNum;
{
    self = [super init];
    if (self){
        Node * temp;
        temp = [[Node alloc]init];
        temp.value = aNum;
        return temp;
    }
    else{
        return self;
    }
}
@end
