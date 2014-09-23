#ifndef TREE_H
#define TREE_H

using namespace std;
#include<iostream>
class Tree
{
    public:
        class Node
        {
            public:
                char* data;
                Node *left, *right;
                Node(char* d) //constructor
                    :data(d), left(NULL), right(NULL) {}
        };

        Node *root;
        Node * trav(char*, Node * &);
        void chop(Node * N);
        void copy(Node * N);
        void print(Node *, int) const;
        void print_inorder();
        int myStrcmp(const char*,const char*);
        void inorder(Node*);
        void unio(Node* );
        void unionn(Node* ,Node*  );
        void intersect(Node* );
        void intersection(Node* ,Node*  );
        Tree(void); //constructor
        ~Tree(void); //destructor
        bool find(char *);
        void insert(char *);
        bool empty(void) const;
        Tree(const Tree &); //copy constructor
        const Tree & operator=(const Tree &); //assignment operator overload
};


#endif // TREE_H
