#include "tree.h"

#include<iostream>
using namespace std;


Tree s1,s3;
int Tree::myStrcmp(const char *s1, const char *s2){
    for (;*s1 != '\0' && *s2 != '\0';s1++,s2++){
        if (*s1 < *s2)
            return -1;
        if (*s1 > *s2)
            return 1;
    }
    if (*s2 != '\0') // this means s2 is longer than s1
        return -1;   // -1 because s1 < s2
    else if (*s1 != '\0') // s1 is longer
        return 1;
    else return 0;
}

Tree::Tree(void)
{
     root=NULL;
}

bool Tree::empty(void) const
{
     return !root;
}

Tree::Node * Tree::trav(char *foo, Node * & par)
{
     Node * curr=root;
     par=NULL;
     while(curr && (myStrcmp(curr->data,foo)!= 0))
     {
         par=curr;

         if(myStrcmp(foo,curr->data)<0)
            curr=curr->left;
         else
             curr=curr->right;
     }
     return curr;
}

bool Tree::find(char* foo)
{
     Node * par=NULL;
     Node * curr=trav(foo, par);
     return curr;
}

void Tree::insert(char* foo)
{
     Node * par=NULL;
     Node * curr=trav(foo,par);
     if(!curr) //no duplicates
     {
         curr= new Node(foo);
         if(!par)
             root=curr;
         else if(myStrcmp(foo,par->data)<0)

             par->left=curr;
         else
             par->right=curr;
     }
}


void Tree::chop(Node *N)
{
     if(N)
     {
         chop(N->left);
         chop(N->right);
         delete N;
     }
}

//destructor
Tree::~Tree(void)
{
     chop(root);
}
//copy contructor
Tree::Tree(const Tree & T)
{
     root=NULL;
     copy(T.root);
}

void Tree::copy(Node * N)
{
     if(N)
     {
         insert(N->data);
         copy(N->left);
         copy(N->right);
     }
}
//Assignment operator overlaod
const Tree & Tree::operator=(const Tree & T)
{
     if(this != &T)
     {
          chop(root);
          root=NULL;
          copy(T.root);
     }
     return *this;
}


void Tree::print_inorder()
{
  inorder(root);
}

void Tree::inorder(Node* p)
{
    if(p != NULL)
    {

        if(p->left) inorder(p->left);
         cout<<" "<<p->data<<" ";
        if(p->right) inorder(p->right);
    }
    else return;
}
void Tree::unio(Node* set)
{

    if(set != NULL)
    {
    if(set->left) unio(set->left);
    if(!(this->find(set->data)))
    this->insert(set->data);
    if(set->right)unio(set->right);
    }

}

void Tree::unionn(Node* set1,Node* set2 )
{
    if(set2 != NULL)
    {
        unio(set2);
    }
}

void Tree::intersect(Node* set)
{

    if(set != NULL)
    {
    if(set->left) intersect(set->left);
    if(s1.find(set->data))
    s3.insert(set->data);
    if(set->right)intersect(set->right);
    }

}

void Tree::intersection(Node* set1,Node* set2 )
{
    s3.root=NULL;
    if(set2 != NULL)
    {
        intersect(set2);
    }
    s1=s3;
}


//Test
int main()
{
    Tree s2;

    while(1)
    {
        char* tmp=new char[256];
//        int tmp;
        char choice;
        cout<<"Enter your choice of Operation on sets S1 and S2";
        cout<<endl<<endl<<"e — Erase set S1"<<endl;
        cout<<"s — Switch sets S1 and S2"<<endl;
        cout<<"c — Copy set S1 to S2"<<endl;
        cout<<"l — List contents of set S1 and S2"<<endl;
        cout<<"a — Add element to set S1"<<endl;
        cout<<"u — Union of Sets S1 and S2"<<endl;
        cout<<"i — Intersection of sets S1 and S2"<<endl;
        cout<<"q —Quits the set manage"<<endl;
        cout<<"-----------------------------------------------"<<endl;
        cin>>choice;

        switch (choice) {

        case 'e':
            //Clear s1
           s1.root=NULL;
           cout<<"S1 erased"<<endl;
           cout<<"-----------------------------------------------"<<endl;
           break;

        case 's':
            //switch s1 & s2
            s3=s1;
            s1=s2;
            s2=s3;
            cout<<"Sets Swapped"<<endl;
            cout<<"-----------------------------------------------"<<endl;
            break;


        case 'c':
            //copy s1 to s2
            s2=s1;
            cout<<"S1 copied to S2"<<endl;
            cout<<"-----------------------------------------------"<<endl;
            break;

        case 'l':
            //display s1 and s2
            cout<<"S1:";
            s1.print_inorder();
            cout<<endl<<"S2:";
           s2.print_inorder();
            cout<<endl;
            cout<<"-----------------------------------------------"<<endl;
            break;

        case 'a':
            //add element to s1
            cout<<endl<<"Enter the element that is to be added to S1"<<endl;
            cin>>tmp;
            if(!(s1.find(tmp)))
            s1.insert(tmp);

            break;

        case 'u':
            //union of s1 and s2
            s1.unionn(s1.root,s2.root);
            cout<<"Union of sets Done"<<endl;
            cout<<"-----------------------------------------------"<<endl;
            //cout<<s1;
            break;


        case 'i':
            //intersetion of s1 and s2
            s1.intersection(s1.root,s2.root);
            cout<<"Intersection of sets Done"<<endl;
            cout<<"-----------------------------------------------"<<endl;
            break;

        case 'q':
            cout<<endl<<"----Set manage exited----"<<endl;
            return 0;


        default:
            cout<<endl<<"*****Enter the correct choice****"<<endl;
            main();
        }

}}
