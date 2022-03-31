#include<iostream>
#include<math.h>


using namespace std;



// ——————–
// | Joc de labirint |
// ——————–

// –> Definire variabile:

// omuletul
var ox;
var oy;

// destinatia
var dx;
var dy;

// traseul si peretii
var mp = Matrice(11, 11);

// variabile ajutatoare
var l;
var c;

// –> Initializari:

// omuletul
ox = 1;
oy = 1;

// destinatia
dx = 10;
dy = 10;

// traseul si peretii
l = 1
while (l <= 10)
{
    c = 1;
        while (c <= 10)
        {
            mp[l][c] = 0;
            c = c + 1;
        }
        l = l + 1;
}
mp[1][1] = 1; mp[2][1] = 1; mp[3][1] = 1; mp[4][1] = 1;
mp[5][1] = 1; mp[6][1] = 1; mp[7][1] = 1; mp[8][1] = 1;
mp[9][1] = 1; mp[2][2] = 1; mp[6][2] = 1; mp[9][2] = 1;
mp[2][3] = 1; mp[4][3] = 1; mp[6][3] = 1; mp[8][3] = 1;
mp[9][3] = 1; mp[4][4] = 1; mp[8][4] = 1; mp[9][2] = 1;
mp[2][5] = 1; mp[3][5] = 1; mp[4][5] = 1; mp[5][5] = 1;
mp[6][5] = 1; mp[8][5] = 1; mp[10][5] = 1; mp[2][6] = 1;
mp[4][6] = 1; mp[8][6] = 1; mp[2][7] = 1; mp[4][7] = 1;
mp[5][7] = 1; mp[6][7] = 1; mp[8][7] = 1; mp[9][7] = 1;
mp[2][8] = 1; mp[9][8] = 1; mp[2][9] = 1; mp[4][9] = 1;
mp[5][9] = 1; mp[6][9] = 1; mp[7][9] = 1; mp[8][9] = 1;
mp[9][9] = 1; mp[2][10] = 1;

// –> Desenare interfata:

// desenare pereti
l = 1;
while (l <= 10)
{
    c = 1;
        while (c <= 10)
        {
            if (mp[l][c] == 0)
            {
                Stinge(c, 11 - l)
            }
            else
            {
                Aprinde(c, 11 - l, NEGRU)
            }
            c = c + 1;
        }
        l = l + 1;
}

// desenare destinatie
Aprinde(dx, dy, ROSU)

// desenare omulet
Aprinde(ox, oy, VERDE)

// –> Definire functie taste:

function FunctieTaste(ev)
{
    var tasta = TastaApasata(ev)
        // daca s-a apasat vreo tasta de directie,
        // atunci incearca deplasarea in directia aia
        var oxnou = ox;
        var oynou = oy;
        if ((tasta == 'a') && (ox > 1))
        {
            oxnou = ox - 1;
        }
    if ((tasta == 'd') && (ox < 10))
    {
        oxnou = ox + 1;
    }
    if ((tasta == 's') && (oy > 1))
    {
        oynou = oy - 1;
    }
    if ((tasta == 'w') && (oy < 10))
    {
        oynou = oy + 1;
    }
    Stinge(ox, oy)
        // daca la noua pozitie nu e perete,
        // atunci deplaseaza omuletul acolo
        if (mp[11 - oynou][oxnou] != 1)
        {
            ox = oxnou;
            oy = oynou;
        }
    Aprinde(ox, oy, VERDE)
        // daca omuletul e la destinatie,
        // atunci incheie jocul si afiseaza zambet
        if ((ox == dx) && (oy == dy))
        {
            //inceteaza ascultarea tastelor
            AscultaTaste()
                // sterge ecranul
                l = 1;
                while (l <= 10)
                {
                    c = 1;
                        while (c <= 10)
                        {
                            Stinge(c, 11 - l)
                                c = c + 1;;
                        }
                        l = l + 1;
                }
            // afiseaza zambet
                Aprinde(3, 4, ALBASTRU)
                Aprinde(4, 3, ALBASTRU)
                Aprinde(5, 3, ALBASTRU)
                Aprinde(6, 3, ALBASTRU)
                Aprinde(7, 3, ALBASTRU)
                Aprinde(8, 4, ALBASTRU)
                Aprinde(4, 7, ALBASTRU)
                Aprinde(7, 7, ALBASTRU)
        }
}

AscultaTaste(FunctieTaste)