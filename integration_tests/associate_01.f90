program associate_01
implicit none
real, allocatable :: a(:), b(:,:), c(:,:,:)
real, pointer :: x(:), y(:,:,:)
real :: a_1, c_234
integer :: n
n = 10
allocate(a(5))
allocate(b(n,n), c(n, 5, n))
1 loop: associate (x => a, y => c)
    x(1) = x(1) + 5
    y(2,3,4) = 3
end associate loop
if(a(1).EQ.5) GO TO 2
a_1 = a(1)
c_234 = c(2,3,4)
print *, a_1
print *, c_234
end
