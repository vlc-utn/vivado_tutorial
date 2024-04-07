/*
 * File: main.c
 *
 * MATLAB Coder version            : 5.5
 * C/C++ source code generated on  : 01-Apr-2024 20:32:57
 */

/*************************************************************************/
/* This automatically generated example C main file shows how to call    */
/* entry-point functions that MATLAB Coder generated. You must customize */
/* this file for your application. Do not modify this file directly.     */
/* Instead, make a copy of this file, modify it, and integrate it into   */
/* your development environment.                                         */
/*                                                                       */
/* This file initializes entry-point function arguments to a default     */
/* size and value before calling the entry-point functions. It does      */
/* not store or use any values returned from the entry-point functions.  */
/* If necessary, it does pre-allocate memory for returned values.        */
/* You can use this file as a starting point for a main function that    */
/* you can deploy in your application.                                   */
/*                                                                       */
/* After you copy the file, and before you deploy it, you must make the  */
/* following changes:                                                    */
/* * For variable-size function arguments, change the example sizes to   */
/* the sizes that your application requires.                             */
/* * Change the example values of function arguments to the values that  */
/* your application requires.                                            */
/* * If the entry-point functions return values, store these values or   */
/* otherwise use them as required by your application.                   */
/*                                                                       */
/*************************************************************************/

/* Include Files */
#include "main.h"
#include "c_function.h"
#include "c_function_terminate.h"
#include "rt_nonfinite.h"

#include <xil_printf.h>
#include <sleep.h>

/* Function Declarations */
static double argInit_real_T(void);

/* Function Definitions */
/*
 * Arguments    : void
 * Return Type  : double
 */
static double argInit_real_T(void)
{
  return 0.0;
}

/*
 * Arguments    : int argc
 *                char **argv
 * Return Type  : int
 */
int main(int argc, char **argv)
{
  (void)argc;
  (void)argv;
  /* The initialize function is being called automatically from your entry-point
   * function. So, a call to initialize is not included here. */
  /* Invoke the entry-point functions.
You can call entry-point functions multiple times. */
  main_c_function();
  /* Terminate the application.
You do not need to do this more than one time. */
  c_function_terminate();
  return 0;
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void main_c_function(void)
{
  double x1;
  double x2;
  int exitflag;

  uint16_t x1_print;
  uint16_t x2_print;
  uint16_t exitflag_print;
  int j;

  /* Initialize function 'c_function' input arguments. */
  /* Call the entry-point 'c_function'. */
  while(1) {
      xil_printf("Enter value as argument...\n");
      scanf("%i", &j);

      c_function(j, &x1, &x2, &exitflag);

      x1_print = x1*1000;
      x2_print = x2*1000;
      exitflag_print = exitflag;

      xil_printf("Your input value is %i\n", j);
      xil_printf("x1 = %d\nx2 = %d\nexitflag = %d\n", x1_print, x2_print, exitflag);

      sleep(1);
  }
  
}

/*
 * File trailer for main.c
 *
 * [EOF]
 */
