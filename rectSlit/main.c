#include<stdio.h>
#include<math.h>
  FILE *fout;
  double intensity(double); // intensity declaration
int main() {
  int i;
  double x; // angle variable in radian +-2.0 radian for now
  double l1=500.0e-04; // Wavelength in mm, 500 nm
  double l2=600.0e-04; // Wavelength in mm, 600 nm
  double l3=700.0e-04; // Wavelength in mm, 700 nm
  double a1=0.25;      // slit width in mm
  double a2=0.1;      // slit width in mm
  double alpha1;
  double alpha2;
  double alpha3;
  double alpha4;
  double alpha5;
  double alpha6;
  fout=fopen("out.dat","w"); // open a file to write the outputs
  fprintf(fout,"#angle    500nm       600nm      700nm        500nm       600nm       700nm\n");
  for(i=-2000; i<=20000; i++) {
    x=0.001*(double)i; // variation of angle
    if(x!=0.0) { // avoid division by zero
      alpha1=a1*sin(x)/l1;
      alpha2=a1*sin(x)/l2;
      alpha3=a1*sin(x)/l3;
      alpha4=a2*sin(x)/l1;
      alpha5=a2*sin(x)/l2;
      alpha6=a2*sin(x)/l3;
      fprintf(fout,"%7.4lf %11.8lf %11.8lf %11.8lf %11.8lf %11.8lf %11.8lf\n",
              x, intensity(alpha1), intensity(alpha2), intensity(alpha3),
	      intensity(alpha4), intensity(alpha5), intensity(alpha6));
    }
  }
  fclose(fout); // close the output file
}

