#include "turkeysandwich.h"
TurkeySandwich::TurkeySandwich()
{}
TurkeySandwich::TurkeySandwich(const char *name_, double price_, int calories_, vector<char*> condiments_, int bread_)
            :FoodItem(name_,price_,calories_),condiments(condiments_)
{
   b=bread(bread_);
}
TurkeySandwich::TurkeySandwich(const TurkeySandwich& sandwichObj) : FoodItem(sandwichObj)
{
      this->condiments=sandwichObj.condiments;
       this->b=sandwichObj.b;
}
TurkeySandwich::~TurkeySandwich()
{
    //delete condiments
}
void TurkeySandwich::print()
{
    cout<<endl<<"Name:"<<this->name<<endl;
    cout<<endl<<"Price:"<<this->price<<endl;
    cout<<endl<<"Calories:"<<this->calorie<<endl;
    cout<<endl<<"The condiments are:";
    for(unsigned int i=0;i<condiments.size();i++)
        cout<<condiments.at(i)<<" ";
    cout<<endl;
    if(b==white)
        cout<<endl<<"Type of Bread:White"<<endl;
    if(b==wholeWheat)
        cout<<endl<<"Type of Bread:WholeWheat"<<endl;
    if(b==rye)
        cout<<endl<<"Type of Bread:Rye"<<endl;
}
TurkeySandwich* TurkeySandwich::copy()
{
    TurkeySandwich *t1=new TurkeySandwich(*this);
    return t1;
}
