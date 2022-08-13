#include<stdio.h>
#include<math.h>
// function to calculate factorial of a number
int factorial(int n)
{
 int fact = 1, i; // initialize variable
 for(i=1;i<=n;i++) // iterate from 1 to n
 fact = fact * i; // multiply i value to the variable

 return fact; // return the result
}
// function to calculate power of a number
float power(float a, int b)
{
 float result=1; // variable to store the result
 int i=1; // variable to keep the count
 while(i <= b) // while i value is less than exponent
 {
 result = result * a; // multiply result with the base
 i++; // increment the i value
 }
 return result; // return result
}
// function to calculate
float compute_ex(float x)
{
 float result = 1, term; // variable initialization
 int n = 1;
 while(1) // execute the loop till condition is true
 {
 term = power(x,n)/factorial(n); // calculate the term
 if(term < 0.0001) // if term is less than 0.0001
 break; // terminate the loop
 else // if term is greater than 0.0001
 {
 n = n + 1; // increment n value
 result = result + term; // add term to result
 }
 }
 return result; // return the result
}
// main function
void main()
{
 float x, result; // variable declaration
 printf("Enter the value of x: \n"); // take the number as input
 scanf("%f", &x);
 result = compute_ex(x); // function call to calculate exponent
 printf("e to the power %0.1f = %0.2f ", x, result); // print the result
}
