! private or shared memory
! firstprivate and lastprivate

program private1

	integer :: n = 7
	integer, dimension(7) :: x
	real (kind = 8) :: y = 2.d0

	!$omp parallel do !firstprivate(y) lastprivate(y)
	do i = 1, n
		y = y + 10.d0
		x(i) = y
		!omp critical
		print *, "i = ", i, "x(i) = ", x(i)
		!omp end critical
	enddo
	
	print *, "at end, y = ", y
end program private1
