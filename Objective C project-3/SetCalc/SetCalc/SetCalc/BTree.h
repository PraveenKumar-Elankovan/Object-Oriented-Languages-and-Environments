//  Created by PraveenKumar Elankovan on 06/04/14.
//  Copyright (c) 2014 UIC. All rights reserved.
//


#import "Node.h"


@interface BTree : NSObject<NSCopying>

@property (nonatomic,copy) Node * pointer;
@property (nonatomic,copy) Node * root;
@property (nonatomic,copy) Node * left;
@property (nonatomic,copy) Node * right;
@property (nonatomic,copy) Node * parent;
@property (nonatomic,copy) Node * parentNode;
@property (nonatomic,copy) Node * searchNode;

- (BOOL) isEmpty: (Node *) aNode;
- (Node *) addNum: (int) aNum;
- (NSString *) displayValues;
- (NSString *) printValues: (Node *) rootValue;
- (Node *) delete: (int) aNum;
- (Node *) findNode: (int) aNum;
- (Node *) search: (int) aNum;
- (Node *) findParentNode: (int) aNum;
- (Node *) findParent: (int) aNum;
- (Node *) toLeftLeaves;
- (Node *) toRightLeaves;
- (id) copyWithZone:(NSZone *)zone;

@end



