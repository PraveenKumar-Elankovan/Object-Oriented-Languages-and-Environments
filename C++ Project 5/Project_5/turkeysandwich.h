#ifndef TURKEYSANDWICH_H
#define TURKEYSANDWICH_H
#include "fooditem.h"
using namespace std;
enum bread{white=1, wholeWheat=2,rye=3};
class TurkeySandwich : public FoodItem
{
public:
    TurkeySandwich();
    TurkeySandwich(const char* name_,double price_,int calories_,vector<char*> condiments_,int bread_);
    TurkeySandwich(const TurkeySandwich&);
    virtual ~TurkeySandwich();
    virtual void print();
    virtual TurkeySandwich* copy();
protected:
    bread b;
    vector<char*> condiments;
};
#endif // TURKEYSANDWICH_H
