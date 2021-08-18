FC=gfortran -c
LD=gfortran
SRC=fact.f90 bessel.f90 main.f90
OBJ=fact.o bessel.o main.f90
circular:
  $(FC) $(SRC)
  $(LD) $(OBJ) -o circular.x
        rm -rf *.o
clean:
        rm -rf *.o *.x
