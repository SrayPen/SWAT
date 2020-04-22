      subroutine zeroini

!!    ~ ~ ~ PURPOSE ~ ~ ~
!!    this subroutine zeros values for single array variables

      use parm
      dpd_file = ""
      wpd_file = ""
      rib_file = ""
      sfb_file = ""
      ai0 = 0.
      ai1 = 0.
      ai2 = 0.
      ai3 = 0.
      ai4 = 0.
      ai5 = 0.
      ai6 = 0.
      adj_pkr = 0.
      atmofile = ""
      bactrolp = 0.
      bactsedlp = 0.
      bactkdq = 0.
      bactminlp = 0.
      bactminp = 0.
      bactmx = 0.
      bact_swf = 0.      !CB 12/2/09
      basminpf = 0.
      basminpi = 0.
      basno3f = 0.
      basno3i = 0.
      basorgnf = 0.
      basorgni = 0.
      basorgpf = 0.
      basorgpi = 0.
      calfile = ""
      chla_subco = 0.       !CB 12/2/09
      cmn = 0.
      cncoef = 0.
      cn_froz = 0.      !CB 12/2/09
      cswat = 0        !(CB 8/24/09)
      da_ha = 0.
      da_km = 0.
      dtot = 0.0
      eo_30d = 0.        !(CB 8/24/09)
      evlai = 0.
      evrch = 0.
      fcstcycles = 0
      fcstday = 0
      fcstyr = 0
      fixco = 0.
      ffcb = 0.
      iclb = 0
      icrk = 0
      icfac = 0      !CB 12/2/09
      idaf = 0
      idal = 0
      ideg = 0
      idist = 0
      idt = 0
      ievent = 0
      ifirsth = 1
      ifirstpet = 1
      ifirsts = 1
      ifirstw = 1
      igen = 0
      igropt = 0
      ilog = 0
      immo = 0
      iprint = 0
      ipet = 0
      iprp = 0
      irte = 0
      irtpest = 0
      ised_det = 0
      isep_hru = 0
      iskip = 0
      isproj = 0
      isubwq = 0
      itotb = 0
      itoth = 0
      itotr = 0
      itots = 0
      iwatable = 0
      iwq = 0
      iyr = 0
      k_l = 0.
      k_n = 0.
      k_p = 0.
      lambda0 = 0.
      lambda1 = 0.
      lambda2 = 0.
      lao = 0
!     lucfile = ""
      msk_co1 = 0.
      msk_co2 = 0.
      msk_x = 0.
      mumax = 0.
      n_updis = 0.
      nbyr = 0
      nd_30 = 0
      ndays = (/0,31,60,91,121,152,182,213,244,274,305,335,366/)
      ndays_leap = (/0,31,60,91,121,152,182,213,244,274,305,335,366/)
      ndays_noleap = (/0,31,59,90,120,151,181,212,243,273,304,334,365/)
      nfixmx = 0.      !CB 12/2/09
      nhru = 0
      nperco = 0.
      npmx = 1
      nrch = 0
      nres = 0
      nstep = 0
      nyskip = 0
      ogen = 0
      p_n = 0.
      p_updis = 0.
      pcpsim = 0
      percop = 0.
      pest_sol = 0.
      petfile = ""
      phoskd = 0.
      pperco = 0.
      psp = 0.
      prf = 0.
      rcor = 0.
      res_stlr_co = 0.      !(CB 12/2/09)
      velsetlr = 0.
      velsetlp = 0.
      rexp = 0.
      rfqeo_30d = 0.        !(CB 8/24/09)
      rhfile = ""
      rhoq = 0.
      rhsim = 0
      rsdco = 0.
      rsd_covco = 0.      !CB 12/2/09
      sbactlchlp = 0.
      sbactlchp = 0.
      sbactrolp = 0.
      sbactrop = 0.
      sbactsedlp = 0.
      sbactsedp = 0.
      sdiegrolpq = 0.
      sdiegrolps = 0.
      sdiegropq = 0.
      sdiegrops = 0.
      sftmp = 0.
      slrfile = ""
      slrsim = 0
      smfmn = 0.
      smfmx = 0.
      smtmp = 0.
      smxco = 0.      !CB 12/2/09
      sno3up = 0.
      sno50cov = 0.
      snocov1 = 0.
      snocov2 = 0.
      snocovmx = 0.
      spadyev = 0.
      spadyo = 0.
      spadyosp = 0.
      spadyrfv = 0.
      spadysp = 0.
      spcon = 0.
      spexp = 0.
      subtot = 0
      surlag = 0.
      tfact = 0.
      thbact = 0.
      timp = 0.
      tmpsim = 0
      trnsrch = 0.
      volcrmin = 0.
      wdlprch = 0.
      wdlpres = 0.
      wdlpf = 0.
      wdlpq = 0.
      wdlps = 0.
      wdpf = 0.
      wdpq = 0.
      wdprch = 0.
      wdpres = 0.
      wgpf = 0.
      wgpq = 0.
      wgps = 0.
      wglpf = 0.
      wglpq = 0.
      wglps = 0.
      wof_lp = 0.
      wof_p = 0.
      wlpq20 = 0.
      wlps20 = 0.
      wndfile = ""
      wndsim = 0
      wp20lp_plt = 0.
      wp20p_plt = 0.
      wpq20 = 0.
      wps20 = 0.
      wshd_dnit = 0.
      wshd_fixn = 0.
      wshd_fminp = 0.
      wshd_fnh3 = 0.
      wshd_fno3 = 0.
      wshd_forgn = 0.
      wshd_forgp = 0.
      wshd_ftotn = 0.
      wshd_ftotp = 0.
      wshd_hmn = 0.
      wshd_hmp = 0.
      wshd_nitn = 0.
      wshd_nstrs = 0.
      wshd_pal = 0.
      wshd_pas = 0.
      wshd_plch = 0.
      wshd_pinlet = 0.
      wshd_ptile = 0.
      wshd_pndfr = 0.
      wshd_pndha = 0.
      wshd_pndsed = 0.
      wshd_pndv = 0.
      wshd_pstrs = 0.
      wshd_astrs = 0.
      wshd_pup = 0.
      wshd_raino3 = 0.
      wshd_resfr = 0.
      wshd_resha = 0.
      wshd_ressed = 0.
      wshd_resv = 0.
      wshd_rmn = 0.
      wshd_rmp = 0.
      wshd_rwn = 0.
      wshd_snob = 0.
      wshd_sw = 0.
      wshd_tstrs = 0.
      wshd_voln = 0.
      wshd_wetfr = 0.
      wshd_wstrs = 0.
      wshd_yldn = 0.
      wshd_yldp = 0.
!     septic database file
      septdb = ""

      return
      end