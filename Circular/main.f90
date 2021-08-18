program main
  implicit none
  integer(2) i
  real(8) x, theta, bessel
  real(8), parameter :: pi=3.14159265359d0 ! c=299792458.0d0
  real(8) lambda, k, a ! Wavelength, wavevector, aperature
  open(1,file='data.out',action='write')
  write(*,*) ' Wavelength of light in nm'
  read(*,*) lambda
  k = 2.0*pi/(lambda*1.0d-09) ! formula of wave vector and conversion to m

  write(*,*) ' opening in mm'
  read(*,*) a
  a = a*1.0d-03 ! converted to meter
  write(*,*) k
  write(*,*) a
  write(*,*) k*a
! range of theta
  do i = -5000, 5000
    theta = 1.0*0.001*dble(i)*pi/180.0d0
    x = k * a * sin(theta) ! cinversion to radian from degree
    ! actual calculation
    write(1,10) theta, x, (2.0d0*bessel(1,x)/x)**2
  end do
  close(1)
10 format(2f15.5, f20.15)
end program main

