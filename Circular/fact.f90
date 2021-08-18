real(8) function fact(n)
  implicit none
  integer(2) i, n
  real(8) x
  x = 1.0d0
  do i=1, n
    x = x*dble(i)
  end do
  fact=x
end function fact

