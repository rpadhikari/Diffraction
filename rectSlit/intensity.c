double sin(double);
double pow(double, double);
double intensity(double lambda, double a, double theta) {
  double I0;
  double pi=3.14159;
  I0=pow(sin(pi*a*sin(theta)/lambda)/(pi*a*sin(theta)/lambda),2.0);
  return I0;
}
