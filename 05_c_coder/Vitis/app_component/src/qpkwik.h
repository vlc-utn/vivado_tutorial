/*
 * File: qpkwik.h
 *
 * MATLAB Coder version            : 5.5
 * C/C++ source code generated on  : 01-Apr-2024 20:32:57
 */

#ifndef QPKWIK_H
#define QPKWIK_H

/* Include Files */
#include "rtwtypes.h"
#include <stddef.h>
#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Function Declarations */
double KWIKfactor(const double Ac[10], const int iC[5], int nA,
                  const double Linv[4], double RLinv[4], double D[4],
                  double H[4]);

#ifdef __cplusplus
}
#endif

#endif
/*
 * File trailer for qpkwik.h
 *
 * [EOF]
 */
