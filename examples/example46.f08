program example46
  implicit none
  integer :: a = 5, b = -1
  integer :: i
  print *, "*** Beispiel 4-6 ***"
  print *, "a = ", a
  print *, "b = ", b
  if (a == b) then ! /= für ungleich
     print *, "a == b"
  else if (a >= b)  then ! >, <, <=
     print *, "a >= b"
  else
     print *, "a steht in keiner Relation zu b"
  end if
  do i = 1, 10 ! Drittes Argument gibt Iterationsvorschrift
     print *, "i = ", i
  end do
  do i = 10, 1, -1
     print *, "i = ", i
  end do
  do while (a > b)
     b = b + 2
     print *, "b = b + 2 = ", b
  end do
end program example46
