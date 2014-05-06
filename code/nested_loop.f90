! nested loop
! set private for second level iterator is extremely important

program nested_loop

	use omp_lib

	integer :: i, j
	integer :: m = 5, n = 5
	integer, dimension(5,5) :: a
	
	!$omp parallel do private(i)
	do j = 1, m
		do i = 1, n
			a(i, j) = i
		enddo
	enddo

	print *, "a = ", a

end program nested_loop
