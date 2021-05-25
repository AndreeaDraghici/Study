#include<iostream>
#include"adunare_vectori.h"

using namespace std;

int *Add (int *v1,int *v2,int *v3, int *v4)
{
  int contor;

  int *suma=new int[10];

  for (contor = 1; contor <=v1[0]; contor++)
  {
	  suma[contor] = v1[contor] + v2[contor] + v3[contor] + v4[contor];
  }
  
  return suma;
}