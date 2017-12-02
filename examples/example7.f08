program example7
  implicit none
  real, dimension(3) :: a, b
  real :: vol, circ
  print *, "*** Beispiel 7 ***"
  a = [1., 2., 3.]; b = [-1., 2., 1.]
  call volume_and_length (a, b, vol, circ)
  print *, "a = ", a, "b = ", b
  print *, "vol = ", vol, "circ = ", circ
end program example7
subroutine volume_and_length (a, b, volume, circ)
  real, dimension(3), intent(in) :: a
  real, dimension(3), intent(in) :: b
  real, intent(out) :: volume
  real, intent(out) :: circ
  real, dimension(3) :: c
  call vector_product (a, b, c)
  volume = sqrt(dot_product(c, c))
  circ = 2*(sqrt(dot_product(a, a)) + sqrt(dot_product(b, b)))
contains
  subroutine vector_product (a, b, c)
    real, dimension(3), intent(in) :: a, b
    real, dimension(3), intent(out) :: c
    c = [(a(1) * b(2) - a(2) * b(1)), &
         (a(1) * b(3) - a(3) * b(1)), &
         (a(2) * b(3) - a(3) * b(2))]
  end subroutine vector_product
end subroutine volume_and_length
