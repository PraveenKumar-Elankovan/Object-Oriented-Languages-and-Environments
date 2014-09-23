#ifndef FOOD_H
#define FOOD_H
#include "salmon.h"
#include "eggplantcasserole.h"
#include "turkeysandwich.h"
using namespace std;
class Food : public salmon,EggplantCasserole,TurkeySandwich
{
public:
    int n;
    Food();
};

#endif // FOOD_H
