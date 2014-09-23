#ifndef SALMON_H
#define SALMON_H
#include "fooditem.h"
#include <string.h>
using namespace std;
enum level{rare=0,medium=1,welldone=2};
class salmon : public FoodItem
{
public:
    salmon();
    salmon(const char* name_, double price_, int calorie_, int level_, char* sidedish_);
    salmon(const salmon&);
    virtual void print();
    virtual salmon* copy();
    virtual ~salmon();
protected:
    char* sidedish= new char[256];
    level l;
};
#endif // SALMON_H
