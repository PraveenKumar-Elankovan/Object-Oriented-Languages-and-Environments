#ifndef EGGPLANTCASSEROLE_H
#define EGGPLANTCASSEROLE_H
#include "fooditem.h"
using namespace std;
class EggplantCasserole : public FoodItem
{
public:
    EggplantCasserole();
    EggplantCasserole(const char* name_,double price_,int calories,int serving_,char* sideDish_);
    EggplantCasserole(const EggplantCasserole&);
    virtual ~EggplantCasserole();
    virtual void print();
    virtual EggplantCasserole* copy();
protected:
    int serving;
    char *sideDish= new char[256];
};
#endif // EGGPLANTCASSEROLE_H
