A Set calculator program in Cincom Smalltalk with user friendly GUI. The calculator allows an interactive user to enter and edit information about two sets containing integer numbers. The calculator supports basic set operations such as union and intersection between the two sets. For efficiency reasons, you are required to implement each set as a Binary Search Tree (BST). At any point in time, the user will edit and modify one the two sets, that is, S1. When the editing is complete, the user can save S1 as the second set S2. This operation will deep copy the first set (S1) into the second set; however, S1 is not modified. This set could be edited further. Set operations take place between S1 and S2; operation results are always stored in S1. Recall that BSTs are binary trees subject to the following properties. First, a numeric value is associated with each node. Second, each node can have at most two children, a left child and a right child. Third, given a node x, the values of all nodes in the left subtree of x are less than the value of x, and the values of all nodes in the right subtree of x are greater than the value of x. No duplicate values will be allowed in your trees.

The GUI of your program should support the following functionality; you should choose an appropriate
Smalltalk widget to implement each piece of functionality.

1. Clear set. This function allows interactive users to delete the current S1 set. The previous value stored in S1 is lost.

2. Switch sets. The sets associated with S1 and S2 are swapped, meaning that S1 will receive the previous S2 set and vice versa.

3. Save set. The S1 is copied into S2. The previous content of S2 is lost. The content of S1 is not affected. The two sets must not share any data structures, that is, they can be modified independently of each other.

4. Display set contents. The numeric values stored in the two sets are displayed as two ordered lists (non-decreasing order) in an appropriate widget or widgets. The two sets are not modified.

5. Add element. This function allows a user to add a new integer to S1. The value is read from an appropriate line input widget. No action is taken if the number in question is already in the set. The insertion should preserve the BST properties of S1.

6. Remove element. This function allows a user to remove an element from S1. The value is entered from an appropriate line input widget. No action is taken if the number in question is not in the set. Otherwise, the nodes should be rearranged in such a way as to preserve the properties of a BST in the resulting tree.

7. Union. This element takes the set union of S1 and stores the resulting value in S1. The previous content of S1 is lost. S2 is not modified by this operation.

8. Intersection. This element takes the set intersection of S1 and stores the resulting value in S1. The previous content of S1 is lost. S2 is not modified by this operation.

9. Transform. The user specifies a one-argument block in proper block syntax in an appropriate widget in your interface. The block argument is assumed to be an integer number. The block is applied to all elements in set S1. S1 is destructively modified by replacing each S1 element of with the value returned by executing the block on that element. (Hint: use the class method readFromString: to create an executable block object.)
