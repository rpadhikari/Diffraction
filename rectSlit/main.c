#include<stdio.h>
#include<math.h>
  FILE *fout;
  double intensity(double, double, double); // intensity declaration
  int main() {
  int i;
  double x;            // angle variable in radian -Pi/2 to Pi/2 for now
  double l1=500.0e-04; // Wavelength in mm, 500nm
  double a1=0.1;      // slit width in mm
  fout=fopen("out.dat","w");  // open a file out.dat to write data
  for(i=-314; i<=314; i++) {
  x=0.01*(double)i;
  fprintf(fout,"%5.2lf %15.8lf\n", x, intensity(l1, a1, x));
  }
  fclose(fout);
}

