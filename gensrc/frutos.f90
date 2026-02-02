module frutos 
 use, intrinsic :: iso_fortran_env, dp=>real64
 implicit none 
  include "frutos-param.f90" 
  save
contains
  function get_potential(pos) result(pot)
    real(dp), dimension(0:3) :: pos
    real(dp), dimension(1:7) :: pot
    ! Index convention:
    !   pot: {1: V, 2: W, 3: X, 4: Y, 5: Z, 6: At, 7: Aph}
    real(dp) :: t,r,th,ph
    t=pos(0); r=pos(1); th=pos(2); ph=pos(3) 
    include "frutos-pot.f90" 
  end function
  function get_deriv_potential(pos) result(dpot)
    real(dp), dimension(0:3) :: pos
    real(dp), dimension(1:5,1:2) :: dpot
    ! Index convention:
    !   dpot, first index:
    !     {1: V, 2: W, 3: X, 4: Y, 5: Z}
    !   dpot, second index: (variable w.r.t. which we differentiate)
    !     {1: r, 2: th}
    real(dp) :: t,r,th,ph
    t=pos(0); r=pos(1); th=pos(2); ph=pos(3) 
    include "frutos-dpot.f90" 
  end function 
end module 
