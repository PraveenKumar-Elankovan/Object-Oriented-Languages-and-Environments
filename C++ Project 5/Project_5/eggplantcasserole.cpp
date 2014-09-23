#include "eggplantcasserole.h"
EggplantCasserole::EggplantCasserole()
{
}
EggplantCasserole::EggplantCasserole(const char *name_, double price_, int calories_, int serving_, char *sideDish_)
            :FoodItem(name_,price_,calories_),serving(serving_),sideDish(sideDish_)
{}
EggplantCasserole::EggplantCasserole(const EggplantCasserole& casseroleObj):FoodItem(casseroleObj)
{
    this->serving=casseroleObj.serving;
    this->sideDish=casseroleObj.sideDish;
}
EggplantCasserole::~EggplantCasserole()
{
    delete sideDish;

}
void EggplantCasserole::print()
{
    cout<<endl<<"Name:"<<this->name<<endl;
    cout<<endl<<"Price"<<this->price<<endl;
    cout<<endl<<"Calories:"<<this->calorie<<endl;
    cout<<endl<<"Serving in Ounce:"<<this->serving<<endl;
    cout<<endl<<"SideDish:"<<this->sideDish<<endl;
}
EggplantCasserole* EggplantCasserole::copy()
{
    EggplantCasserole *e1=new EggplantCasserole(*this);
    return e1;
}
