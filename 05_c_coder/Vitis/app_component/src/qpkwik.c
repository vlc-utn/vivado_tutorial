/*
 * File: qpkwik.c
 *
 * MATLAB Coder version            : 5.5
 * C/C++ source code generated on  : 01-Apr-2024 20:32:57
 */

/* Include Files */
#include "qpkwik.h"
#include "rt_nonfinite.h"
#include "xgerc.h"
#include "rt_nonfinite.h"
#include <math.h>

/* Function Declarations */
static double rt_hypotd_snf(double u0, double u1);

/* Function Definitions */
/*
 * Arguments    : double u0
 *                double u1
 * Return Type  : double
 */
static double rt_hypotd_snf(double u0, double u1)
{
  double a;
  double b;
  double y;
  a = fabs(u0);
  b = fabs(u1);
  if (a < b) {
    a /= b;
    y = b * sqrt(a * a + 1.0);
  } else if (a > b) {
    b /= a;
    y = a * sqrt(b * b + 1.0);
  } else if (rtIsNaN(b)) {
    y = rtNaN;
  } else {
    y = a * 1.4142135623730951;
  }
  return y;
}

/*
 * Arguments    : const double Ac[10]
 *                const int iC[5]
 *                int nA
 *                const double Linv[4]
 *                double RLinv[4]
 *                double D[4]
 *                double H[4]
 * Return Type  : double
 */
double KWIKfactor(const double Ac[10], const int iC[5], int nA,
                  const double Linv[4], double RLinv[4], double D[4],
                  double H[4])
{
  double R[4];
  double TL[4];
  double tau[2];
  double work[2];
  double Q_idx_2;
  double Q_idx_3;
  double Status;
  double atmp;
  double beta1;
  int b_i;
  int exitg1;
  int i;
  int ia0;
  int iac;
  int ii;
  int knt;
  int lastc;
  int lastv;
  unsigned int u;
  Status = 1.0;
  RLinv[0] = 0.0;
  RLinv[1] = 0.0;
  RLinv[2] = 0.0;
  RLinv[3] = 0.0;
  u = (unsigned int)nA;
  if ((unsigned int)nA > 2147483647U) {
    u = 2147483647U;
  }
  i = (int)u;
  for (b_i = 0; b_i < i; b_i++) {
    lastc = iC[b_i];
    beta1 = Ac[lastc - 1];
    atmp = Ac[lastc + 4];
    lastc = b_i << 1;
    RLinv[lastc] = Linv[0] * beta1 + Linv[2] * atmp;
    RLinv[lastc + 1] = Linv[1] * beta1 + Linv[3] * atmp;
  }
  TL[0] = RLinv[0];
  TL[1] = RLinv[1];
  TL[2] = RLinv[2];
  TL[3] = RLinv[3];
  tau[0] = 0.0;
  work[0] = 0.0;
  tau[1] = 0.0;
  work[1] = 0.0;
  for (b_i = 0; b_i < 2; b_i++) {
    ii = (b_i << 1) + b_i;
    if (b_i + 1 < 2) {
      atmp = TL[ii];
      lastc = ii + 2;
      tau[0] = 0.0;
      beta1 = fabs(TL[ii + 1]);
      if (beta1 != 0.0) {
        beta1 = rt_hypotd_snf(atmp, beta1);
        if (atmp >= 0.0) {
          beta1 = -beta1;
        }
        if (fabs(beta1) < 1.0020841800044864E-292) {
          knt = 0;
          do {
            knt++;
            for (lastv = lastc; lastv <= lastc; lastv++) {
              TL[lastv - 1] *= 9.9792015476736E+291;
            }
            beta1 *= 9.9792015476736E+291;
            atmp *= 9.9792015476736E+291;
          } while ((fabs(beta1) < 1.0020841800044864E-292) && (knt < 20));
          beta1 = rt_hypotd_snf(atmp, fabs(TL[ii + 1]));
          if (atmp >= 0.0) {
            beta1 = -beta1;
          }
          tau[0] = (beta1 - atmp) / beta1;
          atmp = 1.0 / (atmp - beta1);
          for (lastv = lastc; lastv <= lastc; lastv++) {
            TL[lastv - 1] *= atmp;
          }
          for (lastv = 0; lastv < knt; lastv++) {
            beta1 *= 1.0020841800044864E-292;
          }
          atmp = beta1;
        } else {
          tau[0] = (beta1 - atmp) / beta1;
          atmp = 1.0 / (atmp - beta1);
          for (lastv = lastc; lastv <= lastc; lastv++) {
            TL[lastv - 1] *= atmp;
          }
          atmp = beta1;
        }
      }
      TL[ii] = 1.0;
      if (tau[0] != 0.0) {
        lastv = 2;
        lastc = ii + 1;
        while ((lastv > 0) && (TL[lastc] == 0.0)) {
          lastv--;
          lastc--;
        }
        lastc = 1;
        knt = ii + 2;
        do {
          exitg1 = 0;
          if (knt + 1 <= (ii + lastv) + 2) {
            if (TL[knt] != 0.0) {
              exitg1 = 1;
            } else {
              knt++;
            }
          } else {
            lastc = 0;
            exitg1 = 1;
          }
        } while (exitg1 == 0);
      } else {
        lastv = 0;
        lastc = 0;
      }
      if (lastv > 0) {
        ia0 = ii + 3;
        if (lastc != 0) {
          work[0] = 0.0;
          for (iac = ia0; iac <= ia0; iac += 2) {
            beta1 = 0.0;
            i = (iac + lastv) - 1;
            for (knt = iac; knt <= i; knt++) {
              beta1 += TL[knt - 1] * TL[(ii + knt) - iac];
            }
            knt = ((iac - ii) - 3) >> 1;
            work[knt] += beta1;
          }
        }
        xgerc(lastv, lastc, -tau[0], ii + 1, work, TL, ii + 3);
      }
      TL[ii] = atmp;
    } else {
      tau[1] = 0.0;
    }
  }
  for (ia0 = 0; ia0 < 2; ia0++) {
    for (b_i = 0; b_i <= ia0; b_i++) {
      lastc = b_i + (ia0 << 1);
      R[lastc] = TL[lastc];
    }
    if (ia0 + 2 <= 2) {
      R[(ia0 << 1) + 1] = 0.0;
    }
    work[ia0] = 0.0;
  }
  for (b_i = 1; b_i >= 0; b_i--) {
    ii = b_i + (b_i << 1);
    if (b_i + 1 < 2) {
      TL[ii] = 1.0;
      if (tau[b_i] != 0.0) {
        lastv = 2;
        lastc = ii;
        while ((lastv > 0) && (TL[lastc + 1] == 0.0)) {
          lastv--;
          lastc--;
        }
        lastc = 1;
        knt = ii + 2;
        do {
          exitg1 = 0;
          if (knt + 1 <= (ii + lastv) + 2) {
            if (TL[knt] != 0.0) {
              exitg1 = 1;
            } else {
              knt++;
            }
          } else {
            lastc = 0;
            exitg1 = 1;
          }
        } while (exitg1 == 0);
      } else {
        lastv = 0;
        lastc = 0;
      }
      if (lastv > 0) {
        ia0 = ii + 3;
        if (lastc != 0) {
          work[0] = 0.0;
          for (iac = ia0; iac <= ia0; iac += 2) {
            beta1 = 0.0;
            i = (iac + lastv) - 1;
            for (knt = iac; knt <= i; knt++) {
              beta1 += TL[knt - 1] * TL[(ii + knt) - iac];
            }
            knt = ((iac - ii) - 3) >> 1;
            work[knt] += beta1;
          }
        }
        xgerc(lastv, lastc, -tau[b_i], ii + 1, work, TL, ii + 3);
      }
      lastc = ii + 2;
      for (lastv = lastc; lastv <= lastc; lastv++) {
        TL[lastv - 1] *= -tau[b_i];
      }
    }
    TL[ii] = 1.0 - tau[b_i];
    if (b_i - 1 >= 0) {
      TL[ii - 1] = 0.0;
    }
  }
  beta1 = TL[0];
  atmp = TL[1];
  Q_idx_2 = TL[2];
  Q_idx_3 = TL[3];
  u = (unsigned int)nA;
  if ((unsigned int)nA > 2147483647U) {
    u = 2147483647U;
  }
  b_i = 0;
  do {
    exitg1 = 0;
    if (b_i <= (int)u - 1) {
      if (fabs(R[b_i + (b_i << 1)]) < 1.0E-12) {
        Status = -2.0;
        exitg1 = 1;
      } else {
        b_i++;
      }
    } else {
      for (b_i = 0; b_i < 2; b_i++) {
        double Linv_tmp;
        double b_Linv_tmp;
        lastc = b_i << 1;
        Linv_tmp = Linv[lastc];
        b_Linv_tmp = Linv[lastc + 1];
        TL[b_i] = Linv_tmp * beta1 + b_Linv_tmp * atmp;
        TL[b_i + 2] = Linv_tmp * Q_idx_2 + b_Linv_tmp * Q_idx_3;
      }
      RLinv[0] = 0.0;
      RLinv[1] = 0.0;
      RLinv[2] = 0.0;
      RLinv[3] = 0.0;
      for (ia0 = nA; ia0 >= 1; ia0--) {
        i = (ia0 + ((ia0 - 1) << 1)) - 1;
        RLinv[i] = 1.0;
        for (lastv = ia0; lastv <= nA; lastv++) {
          lastc = (ia0 + ((lastv - 1) << 1)) - 1;
          RLinv[lastc] /= R[i];
        }
        if (ia0 > 1) {
          for (lastv = 2; lastv <= nA; lastv++) {
            RLinv[2] -= R[2] * RLinv[3];
          }
        }
      }
      if (nA > 2147483646) {
        knt = MAX_int32_T;
      } else {
        knt = nA + 1;
      }
      for (b_i = 0; b_i < 2; b_i++) {
        for (ia0 = b_i + 1; ia0 < 3; ia0++) {
          i = b_i + ((ia0 - 1) << 1);
          H[i] = 0.0;
          for (lastv = knt; lastv < 3; lastv++) {
            lastc = (lastv - 1) << 1;
            H[i] -= TL[b_i + lastc] * TL[(ia0 + lastc) - 1];
          }
          H[(ia0 + (b_i << 1)) - 1] = H[i];
        }
      }
      u = (unsigned int)nA;
      if ((unsigned int)nA > 2147483647U) {
        u = 2147483647U;
      }
      i = (int)u;
      for (ia0 = 0; ia0 < i; ia0++) {
        for (b_i = 0; b_i < 2; b_i++) {
          lastc = b_i + (ia0 << 1);
          D[lastc] = 0.0;
          for (lastv = ia0 + 1; lastv <= nA; lastv++) {
            knt = (lastv - 1) << 1;
            D[lastc] += TL[b_i + knt] * RLinv[ia0 + knt];
          }
        }
      }
      exitg1 = 1;
    }
  } while (exitg1 == 0);
  return Status;
}

/*
 * File trailer for qpkwik.c
 *
 * [EOF]
 */
