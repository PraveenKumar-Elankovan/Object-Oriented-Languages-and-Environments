#include "fooditem.h"
FoodItem::FoodItem()
{
    name=NULL;
    price=0;
    calorie=0;
}
FoodItem::FoodItem(const char *name_, double price_, int calorie_): name(name_)
{
  //  strcpy(name,name_);
    price=price_;
    calorie=calorie_;
}
FoodItem::FoodItem(const FoodItem &obj) : name(obj.name)
{
    //strcpy(this->name,obj.name);
    this->price=obj.price;
    this->calorie=obj.calorie;
}
FoodItem::~FoodItem()
{
    delete name;
}
