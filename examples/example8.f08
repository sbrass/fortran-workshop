program example8
  implicit none
  character(len=100) :: str
  character(:), allocatable :: str2, str3 ! allocatable-string
  str = "Hallo Welt!"
  print *, str
  str2 = "Hallo Welt! Ich bin neuer!!"
  print *, str2
  str3  = "Und meine Geschichte ist es..."
  str2 = str2 // " " // str3           ! String konkatieren mit //
  print *, str2
end program example8
