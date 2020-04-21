      subroutine readatmodep
      
!!    ~ ~ ~ PURPOSE ~ ~ ~
!!    this subroutine reads the atmospheric deposition values
!!    ~ ~ ~ INCOMING VARIABLES ~ ~ ~
!!    name        |units         |definition
!!    ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
!!    drydep_no3  |kg/ha/yr      |atmospheric dry deposition of nitrates
!!    drydep_nh4  |kg/ha/yr      |atmospheric dry deposition of ammonia
!!    rammo_sub   |mg/l          |atmospheric deposition of ammonium values for
!!                                 entire watershed
!!    rcn_sub     |mg/l          |atmospheric deposition of nitrate for
!!                                 entire watershed
!!    ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

!!    ~ ~ ~ OUTGOING VARIABLES ~ ~ ~
!!    name        |units         |definition
!!    ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
!!    ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

!!    ~ ~ ~ LOCAL DEFINITIONS ~ ~ ~
!!    name        |units         |definition
!!    eof         |none          |end of file flag (=-1 if eof, else = 0)
!!    ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
!!    ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
!!    ~ ~ ~ ~ ~ ~ END SPECIFICATIONS ~ ~ ~ ~ ~ ~

      use parm
      character (len=80) :: titldum
      integer :: eof 
  
      eof = 0
  
      rcn_sub = rcn_sub_bsn

!!    Atmosperic deposition filename present in file.cio
      if (atmofile /= '             ') then
        open (127,file=atmofile)
          do iii = 1, 5
            read (127,5101) titldum
          end do
  !!      if (iatmodep == 0) then
          do isub = 1, subtot
            read (127,1000,iostat=eof) rammo_sub(isub), rcn_sub(isub),  &
     &        drydep_nh4(isub), drydep_no3(isub)
            if (eof < 0) exit
          end do
  !!      else
  !!          read (127,1001,iostat=eof) mo_atmo1, iyr_atmo1
  !!          iii = 0
  !!        do isub = 1, subtot
  !1          iii = iii + 1
  !!          read (127,1002) iim, iiyrm, (rammo(imo,isub),imo = 1,
  !!          read (127,1002) iim, iiyrm, rcn(
  !!          read (127,1002) iim, iiyrm, drydep_nh4(
  !!          read (127,1002) iim, iiyrm, drydep_no3(
  !!    else
!!    no filename present in file.cio - set defaults
        rammo_sub = 0.
	  rcn_sub = rcn_sub_bsn
        endif
   !!   end if


1000  format (8x,4f10.3)
5101  format (a80)
      return
      end
