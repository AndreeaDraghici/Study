#include "Singleton.h"


Singleton* Singleton::Instance()
{
	if (instance == 0)
		instance = new Singleton;
	return instance;
}