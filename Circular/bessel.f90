function bessel(n, x)
  implicit none
  real(8) bessel
  integer(2) i, n, m
  real(8) sum, x, fact
  sum=0.0d0
  do m=0, 20
    sum=sum+(-1)**m*(x/2.0d0)**(2*m+n)/(fact(m)*fact(m+n))
  end do
  bessel=sum
end function bessel
