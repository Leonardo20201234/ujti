module dipole 
 use, intrinsic :: iso_fortran_env, dp=>real64
 implicit none 
  include "dipole-param.f90" 
  save 
contains 
  end function
  function get_electromagnetic_potential(pos) result(empot)
    real(dp), dimension(0:3) :: pos
    real(dp), dimension(1:4) :: empot
    ! Index convention:
    !   empot: {1: At, 2: Ar, 3:Ath, 4:Aph}
    real(dp) :: t,r,th,ph
    t=pos(0); r=pos(1); th=pos(2); ph=pos(3) 
    include "dipole-empot.f90" 
  end function
  function get_deriv_electromagnetic_potential(pos) result(dempot)
    real(dp), dimension(0:3) :: pos
    real(dp), dimension(1:4,1:2) :: dempot
    ! Index convention:
    !   dempot, first index:
    !     {1: At, 2: Ar, 3: Ath, 4: Aph}
    !   dempot, second index: (variable w.r.t. which we differentiate)
    !     {1: r, 2: th}
    real(dp) :: t,r,th,ph
    t=pos(0); r=pos(1); th=pos(2); ph=pos(3) 
    include "dipole-dempot.f90" 
  end function
end module
 
