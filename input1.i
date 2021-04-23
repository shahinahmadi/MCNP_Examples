Shielding Simulation
C ********************Composite Sample: polyacrylamide+zincoxide(C3H5NO+[10%]ZnO)**********Source:(Y88)*******************
C 
C =========================Cell Cards========================================
 1 1 -3.667     -1                                   $ detector sensitive medium (NaI)
 2 2 -0.001205  -2 1                                 $ air gap inside the detector tube (air)
 3 3 -7.874      2 -3                                $ detector tube clad (steel)
 4 4 -11.35      3 -4                                $ shield cylinder surrounding detector (lead [Pb])
 5 4 -11.35     -5 6                                 $ 2nd collimator shield (lead [Pb])
 6 2 -0.001205  -6 7                                 $ 1st & 2nd collimator aperture (air)
 7 5 -1.559     -7         $ SAMPLE (C3H5NO+[10%]ZnO)
 8 6 -1.19      -8                                   $ plexiglass in which the point-like source mounted
 9 4 -11.35     -9 6 8                               $ 1st collimator shield (lead)
10 4 -11.35     -10                                  $ 1st collimator & shield behind the source (lead [Pb])
11 2 -0.001205  -11 #1 #2 #3 #4 #5 #6 #7 #8 #9 #10   $ world (air)
12 0             11                                  $ outer space (of no matter)

C =======================Surface Cards=======================================
 1 rcc 0 20.20 0 0 11.6 0 2.34      $ cylindrical interface between air gap inside detector tube & sensitive medium (NaI)
 2 rcc 0 20.10 0 0 11.8 0 2.44      $ cylindrical interface between detector tube clad (steel) & air gap inside
 3 rcc 0 20.00 0 0 12.0 0 2.54      $ cylindrical interface between detector tube clad & surrounding lead shield
 4 rcc 0 20.00 0 0 12.0 0 7.54      $ outer cylindrical surface of detector shield (lead)
 5 rcc 0 13.50 0 0 6.50 0 7.54      $ outer cylindrical surface of 2nd collimator shield (lead)
 6 rcc 0  8.50 0 0 11.5 0 1.25      $ cylindrical surface of sample, source's plexiglass, and collimator apertures
 7 rcc 0 13.50 0 0 1.50 0 1.25      $ Sample cylinder
 8 rcc 0  8.20 0 0 0.30 0 1.25      $ Source plexiglass
 9 rcc 0  8.20 0 0 5.30 0 7.54      $ 1st collimator shield cylinder (lead)
10 rcc 0  0.00 0 0 8.20 0 7.54      $ the back shield cylinder (lead) of plexiglass
11 sy  16 30                        $ spherical surface of the world

C =========================Data Cards=========================================
imp:p 2 10r 0
mode p
m1 11000 -0.153373 53000 -0.846627                                    $ NaI 
m2 6000 -0.000124 7000 -0.755268 8000 -0.231781 18000 -0.012827       $ air      
m3 26056 1                                                            $ steel
m4 82000 1                                                            $ Pb
m5   6000 -0.456250 1000  -0.063813 7000 -0.177353
     8000 -0.222242 30000 -0.080342                                   $ C3H5NO+[10%]ZnO
m6 1000 -0.080538 6000 -0.599848 8000 -0.319614                       $ plexiglass (C5O2H8)
C     -----------------<<< Source Definition >>>-----------------
sdef par=2 pos=0 8.3 0 erg=d1                                         $ Y-88 Point Isotropic Source
si1 L 0.001582   0.001649   0.001805   0.001806   0.001872   0.001902
      0.001937   0.001947   0.002196   0.002196   0.013888   0.014098
      0.014165   0.015825   0.015836   0.015971   0.016085   0.016105
      0.850647   0.898042   1.382406   1.836063   2.734086   3.21848
sp1   0.00067    0.00038    0.0015     0.014      0.0077     0.000076
      0.00038    0.00055    0.000046   0.00010    1.96E-06   0.178
      0.343      0.0255     0.0494     0.000189   0.0088     0.00150
      0.00065    0.937      0.00021    0.992      0.0071     0.00007
C     ________________________ Tally ________________________
f2:p 1.3
sd2 17.2021
f8:p 1
e8 1e-6 100i 3.21848
print 50
nps 1e8