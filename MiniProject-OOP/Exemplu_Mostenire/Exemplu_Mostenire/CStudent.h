#pragma once
#include"CPersoana.h"
class CStudent:public CPersoana
{//mostenire publica
protected:
	int an;
	float medie;
public:
	CStudent(string nume, string adresa, int an, float medie);
	~CStudent();
	int getAn();
	float getMedie();
	void setAn(int adresa);
	void setMedie(float medie);


};

