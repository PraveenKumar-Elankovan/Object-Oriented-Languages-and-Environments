#include "salmon.h"
salmon::salmon()
{
}
salmon::salmon(const char *name_, double price_, int calorie_, int level_, char* sidedish_)
            :FoodItem(name_,price_,calorie_)
{
    strcpy(sidedish,sidedish_);
    l=level(level_);
}
salmon::salmon(const salmon& salmonObj): FoodItem(salmonObj)
{
   this->l=salmonObj.l;
    strcpy(this->sidedish,salmonObj.sidedish);
}
salmon::~salmon()
{
   delete sidedish;
}
void salmon::print()
{
    cout<<endl<<"Name:"<<this->name<<endl;
    cout<<endl<<"Price"<<this->price<<endl;
    cout<<endl<<"Calories:"<<this->calorie<<endl;
    if(l==rare)
        cout<<endl<<"Level of cooking:Rare"<<endl;
    if(l==medium)
        cout<<endl<<"Level of cooking:Medium"<<endl;
    if(l==welldone)
        cout<<endl<<"Level of cooking:Well Done"<<endl;
    cout<<endl<<"SideDish:"<<this->sidedish<<endl;
}
salmon* salmon::copy()
{
    salmon *s1=new salmon(*this);
    return s1;
}
