/*
 * File: c_function.c
 *
 * MATLAB Coder version            : 5.5
 * C/C++ source code generated on  : 01-Apr-2024 20:32:57
 */

/* Include Files */
#include "c_function.h"
#include "qpkwik.h"
#include "rt_nonfinite.h"
#include "rt_nonfinite.h"
#include <math.h>

/* Function Definitions */
/*
 * Arguments    : double i
 *                double *x1
 *                double *x2
 *                int *exitflag
 * Return Type  : void
 */
void c_function(double i, double *x1, double *x2, int *exitflag)
{
  static const double Ac[10] = {1.0,  -0.0, -1.0, 1.0,  -2.0,
                                -0.0, 1.0,  -1.0, -2.0, -1.0};
  static const double Linv[4] = {1.0, 1.0, 0.0, 1.0};
  double b[5];
  double cTol[5];
  double lam[5];
  double D[4];
  double H[4];
  double RLinv[4];
  double r[2];
  double Xnorm0;
  double rMin;
  double z_idx_0;
  double z_idx_1;
  int iC[5];
  int b_i;
  int iSave;
  int nA;
  bool iA1[5];
  bool cTolComputed;
  bool exitg2;
  b[0] = -0.0;
  b[1] = -0.0;
  b[2] = -2.0;
  b[3] = -2.0;
  b[4] = -i;
  *exitflag = 1;
  r[0] = 0.0;
  r[1] = 0.0;
  rMin = 0.0;
  cTolComputed = false;
  for (b_i = 0; b_i < 5; b_i++) {
    iA1[b_i] = false;
    lam[b_i] = 0.0;
    cTol[b_i] = 1.0;
    iC[b_i] = 0;
  }
  nA = 0;
  *x1 = 10.0;
  *x2 = 8.0;
  Xnorm0 = 12.806248474865697;
  exitg2 = false;
  while ((!exitg2) && (*exitflag <= 200)) {
    double cMin;
    double cVal;
    int kNext;
    cMin = -1.0E-6;
    kNext = -1;
    for (b_i = 0; b_i < 5; b_i++) {
      if (!cTolComputed) {
        z_idx_0 = fabs(Ac[b_i] * *x1);
        z_idx_1 = fabs(Ac[b_i + 5] * *x2);
        if ((z_idx_0 < z_idx_1) || (rtIsNaN(z_idx_0) && (!rtIsNaN(z_idx_1)))) {
          z_idx_0 = z_idx_1;
        }
        cTol[b_i] = fmax(cTol[b_i], z_idx_0);
      }
      if (!iA1[b_i]) {
        cVal = ((Ac[b_i] * *x1 + Ac[b_i + 5] * *x2) - b[b_i]) / cTol[b_i];
        if (cVal < cMin) {
          cMin = cVal;
          kNext = b_i;
        }
      }
    }
    cTolComputed = true;
    if (kNext + 1 <= 0) {
      exitg2 = true;
    } else if (*exitflag == 200) {
      *exitflag = 0;
      exitg2 = true;
    } else {
      int exitg1;
      do {
        exitg1 = 0;
        if ((kNext + 1 > 0) && (*exitflag <= 200)) {
          int AcRow_idx_0;
          int AcRow_idx_1;
          bool guard1 = false;
          AcRow_idx_0 = (int)Ac[kNext];
          AcRow_idx_1 = (int)Ac[kNext + 5];
          guard1 = false;
          if (nA == 0) {
            z_idx_0 = 2 * AcRow_idx_0 + AcRow_idx_1;
            z_idx_1 = AcRow_idx_0 + AcRow_idx_1;
            guard1 = true;
          } else {
            cVal = KWIKfactor(Ac, iC, nA, Linv, RLinv, D, H);
            if (cVal <= 0.0) {
              *exitflag = -2;
              exitg1 = 1;
            } else {
              z_idx_0 =
                  -H[0] * (double)AcRow_idx_0 + -H[2] * (double)AcRow_idx_1;
              z_idx_1 =
                  -H[1] * (double)AcRow_idx_0 + -H[3] * (double)AcRow_idx_1;
              for (b_i = 0; b_i < nA; b_i++) {
                iSave = b_i << 1;
                r[b_i] = (double)AcRow_idx_0 * D[iSave] +
                         (double)AcRow_idx_1 * D[iSave + 1];
              }
              guard1 = true;
            }
          }
          if (guard1) {
            int kDrop;
            bool exitg3;
            bool isT1Inf;
            bool tempOK;
            kDrop = 0;
            cMin = 0.0;
            isT1Inf = true;
            tempOK = true;
            if (nA > 0) {
              iSave = 0;
              exitg3 = false;
              while ((!exitg3) && (iSave <= nA - 1)) {
                if (r[iSave] >= 1.0E-12) {
                  tempOK = false;
                  exitg3 = true;
                } else {
                  iSave++;
                }
              }
            }
            if ((nA != 0) && (!tempOK)) {
              for (b_i = 0; b_i < nA; b_i++) {
                cVal = r[b_i];
                if (cVal > 1.0E-12) {
                  cVal = lam[iC[b_i] - 1] / cVal;
                  if ((kDrop == 0) || (cVal < rMin)) {
                    rMin = cVal;
                    kDrop = b_i + 1;
                  }
                }
              }
              if (kDrop > 0) {
                cMin = rMin;
                isT1Inf = false;
              }
            }
            cVal =
                z_idx_0 * (double)AcRow_idx_0 + z_idx_1 * (double)AcRow_idx_1;
            if (cVal <= 0.0) {
              cVal = 0.0;
              tempOK = true;
            } else {
              cVal = (b[kNext] -
                      ((double)AcRow_idx_0 * *x1 + (double)AcRow_idx_1 * *x2)) /
                     cVal;
              tempOK = false;
            }
            if (isT1Inf && tempOK) {
              *exitflag = -1;
              exitg1 = 1;
            } else {
              double t;
              if (tempOK) {
                t = cMin;
              } else if (isT1Inf) {
                t = cVal;
              } else if (cMin < cVal) {
                t = cMin;
              } else {
                t = cVal;
              }
              for (b_i = 0; b_i < nA; b_i++) {
                AcRow_idx_0 = iC[b_i];
                lam[AcRow_idx_0 - 1] -= t * r[b_i];
                if (lam[AcRow_idx_0 - 1] < 0.0) {
                  lam[AcRow_idx_0 - 1] = 0.0;
                }
              }
              lam[kNext] += t;
              if ((fabs(t - cMin) < 2.2204460492503131E-16) && (kDrop > 0)) {
                iA1[iC[kDrop - 1] - 1] = false;
                if (kDrop < nA) {
                  AcRow_idx_0 = nA - 1;
                  for (b_i = kDrop; b_i <= AcRow_idx_0; b_i++) {
                    iC[b_i - 1] = iC[b_i];
                  }
                }
                iC[nA - 1] = 0;
                nA--;
              }
              if (!tempOK) {
                *x1 += t * z_idx_0;
                *x2 += t * z_idx_1;
                if (fabs(t - cVal) < 2.2204460492503131E-16) {
                  if (nA == 2) {
                    *exitflag = -1;
                    exitg1 = 1;
                  } else {
                    if (nA > 2147483646) {
                      nA = MAX_int32_T;
                    } else {
                      nA++;
                    }
                    iC[nA - 1] = kNext + 1;
                    b_i = nA - 1;
                    exitg3 = false;
                    while ((!exitg3) && (b_i + 1 > 1)) {
                      AcRow_idx_0 = iC[b_i - 1];
                      if (iC[b_i] > AcRow_idx_0) {
                        exitg3 = true;
                      } else {
                        iSave = iC[b_i];
                        iC[b_i] = AcRow_idx_0;
                        iC[b_i - 1] = iSave;
                        b_i--;
                      }
                    }
                    iA1[kNext] = true;
                    kNext = -1;
                    (*exitflag)++;
                  }
                } else {
                  (*exitflag)++;
                }
              } else {
                (*exitflag)++;
              }
            }
          }
        } else {
          double t;
          cVal = 3.3121686421112381E-170;
          cMin = fabs(*x1);
          if (cMin > 3.3121686421112381E-170) {
            z_idx_0 = 1.0;
            cVal = cMin;
          } else {
            t = cMin / 3.3121686421112381E-170;
            z_idx_0 = t * t;
          }
          cMin = fabs(*x2);
          if (cMin > cVal) {
            t = cVal / cMin;
            z_idx_0 = z_idx_0 * t * t + 1.0;
            cVal = cMin;
          } else {
            t = cMin / cVal;
            z_idx_0 += t * t;
          }
          z_idx_0 = cVal * sqrt(z_idx_0);
          if (fabs(z_idx_0 - Xnorm0) > 0.001) {
            Xnorm0 = z_idx_0;
            for (iSave = 0; iSave < 5; iSave++) {
              cTol[iSave] = fmax(fabs(b[iSave]), 1.0);
            }
            cTolComputed = false;
          }
          exitg1 = 2;
        }
      } while (exitg1 == 0);
      if (exitg1 == 1) {
        exitg2 = true;
      }
    }
  }
}

/*
 * File trailer for c_function.c
 *
 * [EOF]
 */
