module geq_sphax_base
  use, intrinsic :: iso_fortran_env, dp=>real64
  implicit none
  real(dp) :: asp_ratio ! rpolar / requatorial
  real(dp) :: surf_r_eq
  real(dp) :: surf_bl_a

  interface
    function pot_generic(pos)
      import dp
      real(dp), dimension(0:3) :: pos
      real(dp), dimension(1:5) :: pot_generic
      ! Index convention:
      !   pot: {1: V, 2: W, 3: X, 4: Y, 5: Z}
    end function

    function dpot_generic(pos)
      import dp
      real(dp), dimension(0:3) :: pos
      real(dp), dimension(1:5,1:2) :: dpot_generic
      ! Index convention:
      !   dpot, first index:
      !     {1: V, 2: W, 3: X, 4: Y, 5: Z}
      !   dpot, second index: (variable w.r.t. which we differentiate)
      !     {1: r, 2: th}
    end function

    function empot_generic(pos)
      import dp
      real(dp), dimension(0:3) :: pos
      real(dp), dimension(1:4) :: empot_generic
      ! Index convention:
      !   empot: {1: At, 2: Ar, 3: Ath, 4: Aph}
    end function

    function dempot_generic(pos)
      import dp
      real(dp), dimension(0:3) :: pos
      real(dp), dimension(1:4,1:4) :: dempot_generic
      ! Index convention:
      !   dempot, first index:
      !     {1: At, 2: Ar, 3: Ath, 4: Aph}
      !   dempot, second index: (variable w.r.t. which we differentiate)
      !     {1: t, 2: r, 3: th, 4: ph}
    end function
  end interface

  procedure(pot_generic), pointer :: selected_pot_func => null()
  procedure(dpot_generic), pointer :: selected_dpot_func => null()
  procedure(empot_generic), pointer :: selected_empot_func => null()
  procedure(dempot_generic), pointer :: selected_dempot_func => null()
  
  save

contains

  function get_metric(pos) result(metric)
    real(dp), dimension(0:3,0:3) :: metric
    real(dp), dimension(0:3) :: pos
    real(dp), dimension(1:5) :: pot
    pot = selected_pot_func(pos)
    include "sphax-metric.f90"
  end function

  function get_Fem1_base(pos) result(fem)
    real(dp), dimension(0:3,0:3) :: fem
    real(dp), dimension(0:3) :: pos
    real(dp), dimension(1:4) :: empot
    real(dp), dimension(1:4,1:4) :: dempot
    empot = selected_empot_func(pos)
    dempot = selected_dempot_func(pos)
    include "sphax-fem.f90"
  end function

function geqrhs(pos, vel, e) 
  real(dp), dimension(0:3) :: geqrhs
  real(dp), dimension(0:3) :: pos
  real(dp), dimension(0:3) :: vel
  real(dp) :: e  ! carga de la partícula
  real(dp), dimension(1:5) :: pot
  real(dp), dimension(1:5,1:2) :: dpot
  real(dp), dimension(1:4) :: empot
  real(dp), dimension(1:4,1:4) :: dempot
  
  pot = selected_pot_func(pos)
  dpot = selected_dpot_func(pos)
  empot = selected_empot_func(pos)
  dempot = selected_dempot_func(pos)
  
  include "sphax-geq.f90"
end function


  function surface_sph(pos, padding) result(is_surface)
    real(dp) :: padding
    real(dp), dimension(0:3) :: pos
    logical :: is_surface
    if (pos(1)/surf_r_eq - sin(pos(2))**2 - asp_ratio*cos(pos(2))**2 < padding) then
      is_surface = .true.
    else
      is_surface = .false.
    end if
  end function

  function surface_bl(pos, padding) result(is_surface)
    real(dp) :: padding
    real(dp), dimension(0:3) :: pos
    logical :: is_surface
    real(dp) :: r_sph, th_sph
    associate( r_bl => pos(1), th_bl => pos(2), a => surf_bl_a )
      r_sph = sqrt( r_bl**2 + a**2*sin(th_bl)**2 )
      th_sph = acos( r_bl/r_sph * cos(th_bl) )
      if (r_sph/surf_r_eq - sin(th_sph)**2 - asp_ratio*cos(th_sph)**2 < padding ) then
        is_surface = .true.
      else
        is_surface = .false.
      end if
    end associate
  end function

end module geq_sphax_base
