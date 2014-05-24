program do_loop

	integer i
	print *, " "
	print *, "exmaple one:"
	!$omp parallel
		do i = 1, 10
			print *, "i =", i
		end do
	!$omp end parallel

	print *, " "
	print *, "example two:"
	!$omp parallel do
		do i = 1, 10
			print *, "i =", i
		end do
	!$omp end parallel do

end program do_loop
