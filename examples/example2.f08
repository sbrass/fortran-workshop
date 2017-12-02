program example2
  implicit none
  integer :: i
  integer, dimension(10) :: iarray
  integer, dimension(10, 2) :: iarray2
  integer, dimension(:), allocatable :: iarray3
  ! Maximal 7-dim. Array
  iarray = 10                     ! alle Element auf 10 setzen
  iarray = [(i,i=1, 10)]           ! Konstruktor
  iarray = [1, 1, 2, 3, 5, 8, 13, 21, 43, 64]
  iarray2(:, 1) = [(i, i = 1, 10)]
  iarray2(:, 2) = [(i**2, i = 1, 10)]
  iarray3 = [1, 2]                ! Allocate on assignment
  deallocate (iarray3)
  allocate (iarray3(10), source = 1)
  print *, "*** Example 2 ***"
  print *, "iarray = ", iarray
  print *, "iarray2 = ", iarray2
  print *, "iarray3 = ", iarray3
end program example2
