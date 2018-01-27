double sin(double); // trigonometric sin function in double precision
double pow(double, double); // for x^y we use pow(x, y)

/* Variables declarations
 * lambda = wavelendthof light in nanometer, converted to mm
 * theta = angular separation of light ray
 * a = slit width in mm
*/
// main function definition for calculating intensity
double intensity(double alpha) {
//  double I0 = 1.0; // Maximum intensity set to unity
  double I; // intensity to be computed
  double pi=3.14159; // value of pi, not done in higher percision
//  double alpha = a*sin(theta)/lambda;
//  I=I0*pow(sin(pi*a*sin(theta)/lambda)/(pi*a*sin(theta)/lambda),2.0);
  I=pow(sin(pi*alpha)/(pi*alpha), 2.0);
  return I;
}
