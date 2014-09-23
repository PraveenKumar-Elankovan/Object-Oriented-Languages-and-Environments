//
//  Node.h
//  BinarySearchTree
//  Created by PraveenKumar Elankovan on 06/04/14.
//  Copyright (c) 2014 UIC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
{
    int value;
    Node *left;
    Node *right;
}

- (void) setValue: (int) valueAdd;
- (int) value;
- (void) setLeft: (Node *) leftChild;
- (Node *) left;
- (void) setRight: (Node *) rightChild;
- (Node *) right;
- (Node *) initWithValue: (int) aNum;

@end



