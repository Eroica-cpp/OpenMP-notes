! test private variable

program test3
	
	use omp_lib
	integer :: thread_num

	print *, "testing openmp private variable"
	!$omp parallel private(thread_num)

	!$ thread_num = omp_get_thread_num()
	
	!$omp critical
	!$ print *, "This is thread = ", thread_num
	!$omp end critical
	!$omp end parallel

end program test3
