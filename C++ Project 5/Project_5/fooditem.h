#ifndef FOODITEM_H
#define FOODITEM_H
#include <iostream>
#include <iostream>
#include <string>
#include <cstring>
#include <vector>
using namespace std;
class FoodItem
{
public:
    FoodItem();
    FoodItem(const char* name_,double price_,int calorie_);
    FoodItem(const FoodItem& obj);
    virtual ~FoodItem();
    virtual void print()=0;
    virtual FoodItem* copy()=0;
protected:
    const char* name=new char[256] ;
    double price;
    int calorie;
};
#endif // FOODITEM_H
