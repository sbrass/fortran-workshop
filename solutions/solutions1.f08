program solution1
  implicit none
  integer :: i
  integer, dimension(10) :: i_vector
  real, dimension(5) :: r_vector
  print *, "*** Lösung 1 ***"
  i_vector = [(i, i = 1, 10)]
  r_vector = [(0.2 * i, i = 1, 5)]
  print *, "sum_vector: ", sum_vector (i_vector)
  print *, "product_vector: ", product_vector (r_vector)
  print *, "non_zero_element: ", non_zero_element (i_vector - 1)
contains
  integer function sum_vector (vector) result (sum)
     integer, dimension(:), intent(in) :: vector
     integer :: i, n_vector
     n_vector = size (vector)
     sum = 0
     do i = 1, n_vector
        sum = sum + vector(i)
     end do
   end function sum_vector
  real function product_vector (vector) result (product)
     real, dimension(:), intent(in) :: vector
     integer :: i, n_vector
     n_vector = size (vector)
     product = 1
     do i = 1, n_vector
        product = product * vector(i)
     end do
   end function product_vector
  logical function non_zero_element (vector) result (yorn)
      integer, dimension(:), intent(in) :: vector
      yorn = .not. any (vector == 0) ! all (vector /= 0)
    end function non_zero_element
end program solution1
