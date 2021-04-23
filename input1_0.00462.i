Shielding Simulation
C ********************Bulk Sample:(ZnO)**********Source:(Ba133)*******************
C 
C =========================Cell Cards========================================
 1 1 -3.667     -1                                   $ detector sensitive medium (NaI)
 2 2 -0.001205  -2 1                                 $ air gap inside the detector tube (air)
 3 3 -7.874      2 -3                                $ detector tube clad (steel)
 4 4 -11.35      3 -4                                $ shield cylinder surrounding detector (lead [Pb])
 5 4 -11.35     -5 6                                 $ 2nd collimator shield (lead [Pb])
 6 2 -0.001205  -6 7                                 $ 1st & 2nd collimator aperture (air)
 7 5 -5.606     -7                     $ SAMPLE (ZnO)
 8 6 -1.19      -8                                   $ plexiglass in which the point-like source mounted
 9 4 -11.35     -9 6 8                               $ 1st collimator shield (lead)
10 4 -11.35     -10                                  $ 1st collimator & shield behind the source (lead [Pb])
11 2 -0.001205  -11 #1 #2 #3 #4 #5 #6 #7 #8 #9 #10   $ world (air)
12 0             11                                  $ outer space (of no matter)

C =======================Surface Cards=======================================
 1 rcc 0 7.0 0 0 11.6 0 2.34      $ cylindrical interface between air gap inside detector tube & sensitive medium (NaI)
 2 rcc 0 6.9 0 0 11.8 0 2.44      $ cylindrical interface between detector tube clad (steel) & air gap inside
 3 rcc 0 6.8 0 0 12.0 0 2.54      $ cylindrical interface between detector tube clad & surrounding lead shield
 4 rcc 0 6.8 0 0 12.0 0 7.54      $ outer cylindrical surface of detector shield (lead)
 5 rcc 0 6.3 0 0  0.5 0 7.54      $ outer cylindrical surface of 2nd collimator shield (lead)
 6 rcc 0 5.3 0 0  1.5 0 0.30      $ cylindrical surface of sample, source's plexiglass, and collimator apertures
 7 rcc 0 5.8 0 0  0.5 0 1.25      $ Sample cylinder
 8 rcc 0 5.0 0 0  0.3 0 1.25      $ Source plexiglass
 9 rcc 0 5.0 0 0  0.8 0 7.54      $ 1st collimator shield cylinder (lead)
10 rcc 0 0.0 0 0  5.0 0 7.54      $ the back shield cylinder (lead) of plexiglass
11 sy  9.4 15                     $ spherical surface of the world

C =========================Data Cards=========================================
imp:p 2 10r 0
mode p
m1 11000 -0.153373 53000 -0.846627                                    $ NaI 
m2 6000 -0.000124 7000 -0.755268 8000 -0.231781 18000 -0.012827       $ air      
m3 26056 1                                                            $ steel
m4 82000 1                                                            $ Pb
m5 30000 -0.803422 8000 -0.196578                                     $ ZnO
m6 1000 -0.080538 6000 -0.599848 8000 -0.319614                       $ plexiglass (C5O2H8)
C     -----------------<<< Source Definition >>>-----------------
sdef par=2 pos=0 5.15 0 axs=0 1 0 rad=d1 erg=0.00462                  $ Ba-133 Isotropic Surface Source
si1 0 0.3
sp1 0 1
C     ________________________ Tally ________________________
f2:p 1.3
sd2 17.2021
print 50
nps 1e8