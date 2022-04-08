#pragma once
#include"COferta_Extra.h"
#include"COferta_Iarna.h"
#include"COferta_Vara.h"
#include"COferta.h"


class CAgentie:public COferta
{
protected:
	CAgentie* agentie;
	COferta_Vara* oferta_vara;
	COferta_Iarna* oferta_iarna;
	COferta_Extra* oferta_extra;
public:
	void rezervari();
	void citire();
	void cazare();
	void gestionare_cereri();
};

