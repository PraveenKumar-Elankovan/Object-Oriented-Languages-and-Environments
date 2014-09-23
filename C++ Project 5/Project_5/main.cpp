#include <iostream>
#include <string>
#include <cstring>
#include <vector>
#include "fooditem.h"
#include "salmon.h"
#include "eggplantcasserole.h"
#include "turkeysandwich.h"
using namespace std;
int main()
{
    salmon *s1;
    EggplantCasserole *e1;
    TurkeySandwich *t1;
    level l;
    bread b;
    bool b1=true,l1=true;
    char ch;
    const char* name_=new char[256];
    double price_;
    int calories_;
    unsigned int iterator;
    int tmp,tmp1,tmp2,tmp3,tmp7;
    std::vector<FoodItem*> list[10],tempList;
    std::vector<char*> condiments;
    char* temp=new char[256];
    bool q=true;
    int level_;
    int type;
    char* sideDish_=new char[256];
    while(q)
    {
    cout<<endl<<"Customer Order System";
    cout<<endl<<"*--*--*--*--*--*--*--*";
    cout<<endl<<"n - Create NewList"<<endl;
    cout<<"a - Add_List_Entry"<<endl;
    cout<<"c - Copy_List"<<endl;
    cout<<"d - Delete_List"<<endl;
    cout<<"l - Display List"<<endl;
    cout<<"s - Swap Lists"<<endl;
    cout<<"q - Quit COS"<<endl;
    cout<<endl<<"Choose one of the above option:";
    cin>>ch;
    switch(ch)
    {
    case 'n':
        cout<<"Enter the patron's seat number:";
        cin>>tmp;
        if(tmp<1 || tmp >10)
        {
            cout<<endl<<"The seat number is from 1 to 10. Enter the seat number correctly"<<endl;
            main();
            break;
        }
        if(list[tmp-1].empty())
        {
        cout<<endl<<"A new empty list has been created."<<endl;
        }
        else
        {
            cout<<endl<<"Delete the old list before entering a new one"<<endl;
        }
        break;
    case 'a':
        cout<<"Enter the patron's seat number:";
        cin>>tmp;
        if(tmp<1 || tmp >10)
        {
            cout<<endl<<"The seat number is from 1 to 10. Enter the seat number correctly"<<endl;
            break;
        }
        cout<<endl<<"Enter the food Item from the following three:"<<endl;
        cout<<endl<<"1 - Salmon"<<endl<<"2 - Turkey Sandwich"<<endl<<"3 - Eggplant casserole"<<endl;
        cin>>tmp1;
        switch(tmp1)
        {
            case 1:
                name_="salmon";
                price_=25.0;
                calories_=210;
                while(l1)
                {
                cout<<endl<<"Enter the Level to be cooked : "<<endl<<"1.rare"<<endl<<"2.medium"<<endl<<"3.well cooked:";
                cin>>level_;
                switch(level_)
                {
                case 1:
                    l=rare;
                    l1=false;
                    break;
                case 2:
                    l=medium;
                    l1=false;
                    break;
                case 3:
                    l=welldone;
                    l1=false;
                    break;
                 default:
                    cout<<endl<<"Enter the correct choice:"<<endl;
                }}
                cout<<endl<<"Enter the sideDish:";
              cin>>sideDish_;
                s1=new salmon(name_,price_,calories_,l,sideDish_);
                list[tmp-1].push_back(s1);
                cout<<endl<<"The Dish is added to the list"<<endl;
                break;
            case 2:
                name_="Turkey Sandwich";
                price_=45.0;
                calories_=285;
                while(b1)
                {
                cout<<endl<<"Enter the kind of bread:"<<endl<<"1.white"<<endl<<"2.Whole wheat"<<endl<<"3.Rye:";
                cin>>type;
                switch(type)
                {
                case 1:
                    b=white;
                    b1=false;
                    break;
                case 2:
                    b=wholeWheat;
                    b1=false;
                    break;
                case 3:
                    b=rye;
                    b1=false;
                    break;
                default:
                    cout<<endl<<"Enter correct Choice:"<<endl;
                }}
                cout<<endl<<"Following is the selection of Condiments. Press EXIT once the list of condiments are entered"<<endl;
                while(1)
                {
                    cout<<endl<<"Enter the condiment and press Enter : ";
                    temp=new char[256];
                    cin>>temp;
                    if(strcmp(temp,"EXIT")==0 || strcmp(temp,"exit")==0 )
                        break;
                    condiments.push_back(temp);
                }
                  t1=new TurkeySandwich(name_,price_,calories_,condiments,b);
                  condiments.clear();
                  list[tmp-1].push_back(t1);
                  cout<<endl<<"The Dish is added to the list"<<endl;
                  break;
            case 3:
                name_="Eggplant Casserole";
                price_=10.0;
                calories_=57.3;
                cout<<endl<<"Enter the ounces to be served ";
                cin>>tmp7;
                cout<<endl<<"Enter the SideDish";
                cin>>temp;
                e1=new EggplantCasserole(name_,price_*tmp7,calories_*tmp7,tmp7,temp);
                list[tmp-1].push_back(e1);
                cout<<endl<<"The Dish is added to the list"<<endl;
                break;
        }
        break;
    case 'c':
    {
        cout<<endl<<"Enter the patron seat number whose list is to be copied:";
        cin>>tmp1;
        cout<<endl<<"Enter the patron seat number whose list is to be created as a copy:";
        cin>>tmp2;
        if(list[tmp1-1].size()==0)
        {
            cout<<endl<<"List is copied only from already existing list."<<endl<<"The list given as input is empty"<<endl;
            break;
        }
        for(iterator=0;iterator<list[tmp1-1].size();iterator++)
        {
            list[tmp2-1].push_back(list[tmp1-1].at(iterator)->copy());
        }
        cout<<endl<<"List copied"<<endl;
        cout<<endl<<"Order List of patron:"<<tmp1;
        cout<<endl<<"-----------------------";
        for(iterator=0;iterator<list[tmp1-1].size();iterator++)
        {
        tmp3=iterator+1;
        cout<<endl<<"Order No:"<<tmp3<<endl;
        list[tmp1-1].at(iterator)->print();
        cout<<"________________________";
        }
        cout<<endl<<"Order List of patron:"<<tmp2;
        cout<<endl<<"-----------------------";
        for(iterator=0;iterator<list[tmp1-1].size();iterator++)
        {
        tmp3=iterator+1;
        cout<<endl<<"Order No:"<<tmp3<<endl;
        list[tmp2-1].at(iterator)->print();
        cout<<endl<<"________________________"<<endl;
        }
        break;
    }
    case 'd':
    {
        cout<<endl<<"Enter the seat number of patron whose list has to be deleted:";
        cin>>tmp1;
        if(list[tmp1-1].size()==0)
            cout<<endl<<"List already Empty. Cannot Delete empty lists"<<endl;
        else
        {
        for(iterator=0;iterator<list[tmp1-1].size();iterator++)
        delete list[tmp1-1].at(iterator);
        list[tmp1-1].clear();
        cout<<endl<<"List Cleared"<<endl;
        }
        break;
    }
    case 'l':
    {
        cout<<endl<<"Enter the patron number whose list is to be displayed:";
        cin>>tmp1;
        if(tmp1<1 || tmp1 >10)
        {
            cout<<endl<<"The seat number is from 1 to 10. Enter the seat number correctly"<<endl;
            break;
        }
        if(list[tmp1-1].empty())
        {
            cout<<endl<<"The List is empty"<<endl;
        }
        else
        {
        for(iterator=0;iterator<list[tmp1-1].size();iterator++)
        {
        tmp2=iterator+1;
        cout<<endl<<"Order No:"<<tmp2<<endl;
        list[tmp1-1].at(iterator)->print();
        cout<<"________________________"<<endl;
        }
        }
        break;
    }
    case 's':
    {
        cout<<endl<<"Enter the patron seat number whose list is to be swapped:"<<endl<<"Seat 1:";
        cin>>tmp1;
        cout<<endl<<"Seat 2:";
        cin>>tmp2;
        if(list[tmp1-1].size()==0 && list[tmp2-1].size()==0)
        {
            cout<<endl<<"Both the lists are empty"<<endl;
            break;
        }
        tempList.clear();
        for(iterator=0;iterator<list[tmp1-1].size();iterator++)
        {
            tempList.push_back(list[tmp1-1].at(iterator)->copy());
        }
        list[tmp1-1].clear();
        for(iterator=0;iterator<list[tmp2-1].size();iterator++)
        {
            list[tmp1-1].push_back(list[tmp2-1].at(iterator)->copy());
        }
        list[tmp2-1].clear();
        for(iterator=0;iterator<tempList.size();iterator++)
        {
            list[tmp2-1].push_back(tempList.at(iterator)->copy());
        }
        cout<<endl<<"Lists Swapped"<<endl;
        cout<<endl<<"Order List of patron:"<<tmp1;
        cout<<endl<<"-----------------------";
        for(iterator=0;iterator<list[tmp1-1].size();iterator++)
        {
            tmp3=iterator+1;
        cout<<endl<<"Order No:"<<tmp3<<endl;
        list[tmp1-1].at(iterator)->print();
        cout<<"________________________";
        }
        cout<<endl<<"Order List of patron:"<<tmp2;
        cout<<endl<<"-----------------------";
        for(iterator=0;iterator<list[tmp2-1].size();iterator++)
        {
            tmp3=iterator+1;
        cout<<endl<<"Order No:"<<tmp3<<endl;
        list[tmp2-1].at(iterator)->print();
        cout<<"________________________"<<endl;
        }
        break;
    }
    case 'q':
        cout<<endl<<"----COS exited----"<<endl;
        q=false;
        return 0;
    default:
        cout<<endl<<"------Enter the correct choice------"<<endl;
    }
    }
    //Deallocation of pointers
    delete name_;
    delete temp;
    delete sideDish_;
    delete s1;
    delete e1;
    delete t1;
}
