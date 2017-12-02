program example3
  complex :: a
  complex :: b
  print *, "*** Example 3 ***"
  a = (2, 1)
  b = (-1, 2)
  print *, "a = ", a
  print *, "b = ", b
  print *, "a + b = ", a + b      ! Addition
  print *, "a - b = ", a - b      ! Subtraktion
  print *, "a * b = ", a * b      ! Multiplikation
  print *, "a / b = ", a / b      ! Division
  print *, "a ** b = ", a ** b    ! Potenz
  print *, ".true. .and. .false.", .true. .and. .false.
  print *, ".true. .or. .true.", .true. .or. .true.
  print *, "(a - b) /= (a + b)", (a - b) /= (a + b)
end program example3
