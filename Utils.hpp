#include <iostream>
#include <iomanip>
#include <cstdio>
#include <cstdlib>
#include <cassert>
#include <omp.h>

using namespace std;

void Show_mat(const int, const int, double*);
void Show_tilemat(const int, const int, const int, const int, double*);
void Gen_rand_mat(const unsigned, const int, const int, double*);
void Gen_rand_sym_mat(const unsigned, const int, double*);
void Set_Iden(const int, double*);
void cm2ccrb(const int, const int, const int, const int, const double*, double*);
void ccrb2cm(const int, const int, const int, const int, const double*, double*);
