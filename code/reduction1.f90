! calculate first norm use openMP

program reduction1
	
	use omp_lib

	integer :: i, n = 10, norm1, norm2
	integer, dimension(10) :: x = (/1,2,3,4,5,6,7,8,9,10/)

	print *, "sum(x) = ", sum(x)

	! incorrect code
	norm1 = 0
	!$omp parallel do
	do i = 1, n
		norm1 = norm1 + abs(x(i))
	enddo
	print *, "(incorrect) norm = ", norm1

	! correct code use reduction
	norm2 = 0
	!$omp parallel do reduction(+ : norm2)
	do i = 1, n
		norm2 = norm2 + abs(x(i))
	enddo
	print *, "(correct) norm = ", norm2

end program reduction1
