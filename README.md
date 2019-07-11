# The narrows repository #

This repository contains data files (but not the big ones) and documentation in support of the
research paper "A modelling synthesis of subtidal transport through Cook Strait" submitted by
Hadfield &amp; Stevens to the New Zealand Journal of Marine and Freshwater Research, July 2019.

## Simulation input and output files ##

The following directories point to the simulations listed in Table 1 of the paper:

* BRAN: [work/cook/roms/sim34/run/bran-2009-2012-nzlam-1.20](https://github.com/hadfieldnz/narrows/tree/master/work/cook/roms/sim34/run/bran-2009-2012-nzlam-1.20)
* BRAN (detided output): [work/cook/roms/sim34/run/bran-2009-2012-nzlam-1.20-detide](https://github.com/hadfieldnz/narrows/tree/master/work/cook/roms/sim34/run/bran-2009-2012-nzlam-1.20-detide)
* HYCOM: [work/cook/roms/sim34/run/hycom-2009-2012-nzlam-1.20](https://github.com/hadfieldnz/narrows/tree/master/work/cook/roms/sim34/run/hycom-2009-2012-nzlam-1.20)
* NZROMS: [work/cook/roms/sim34/run/nzroms-2009-2012-nzlam-1.20](https://github.com/hadfieldnz/narrows/tree/master/work/cook/roms/sim34/run/nzroms-2009-2012-nzlam-1.20)
* BRAN (no tides): [work/cook/roms/sim34/run/bran-2009-2012-nzlam-1.20-notide](https://github.com/hadfieldnz/narrows/tree/master/work/cook/roms/sim34/run/bran-2009-2012-nzlam-1.20-notide)
* NZ Shelf Seas: [work/hikurangi/sim26/run/2009-2012-nzlam-1.20-barotropic](https://github.com/hadfieldnz/narrows/tree/master/work/hikurangi/sim26/run/2009-2012-nzlam-1.20-barotropic)

Each of the simulation directories contains the following

* A .build_env file. This file is processed by the
  [roms_build](https://github.com/hadfieldnz/roms-scripts-mgh/blob/master/roms_build) script
  and describes the environment used to build the ROMS executable.
* A code subdirectory containing analytical and header files that are used,
  along with the source code, to build the executable.
* A roms.in file. This is a template processed by the
  [roms_mksim](https://github.com/hadfieldnz/roms-scripts-mgh/blob/master/roms_mksim)
  script to produce a series of ROMS
  [input parameter files](https://www.myroms.org/wiki/Input_Parameter_Files),
  named rom_nnn_.in. Each such file is read in by ROMS
  at the start of a segment of the simulation.
* In most cases a ROMS
  [station parameters file](https://www.myroms.org/wiki/stations.in),
  roms_sta.in.
* A series of SLURM batch files, named rom_nnn_.sl, each one executing a
  segment of the simulation.
* A series of ROMS text output files, rom_nnn_.log, each one documenting a
  segment of the simulation. Amongst other things, each log file records
  the commit number used to build this instance of the
  model. The commits all exist on Git Hub.com and can be searched for there.
* A ROMS [varinfo.dat](https://www.myroms.org/wiki/varinfo.dat) file.
* A script, process_output to post-process the ROMS output.

## Scripts ##

The scripts subdirectory contains a script called workpath.If you look at any of the roms.in
template files from the simulations above, you will see that near the top there are lines like the following

```
! Setting the wp variable: <<<wp = run('workpath')>>><<wp>>
! Setting the wp2 variable: <<<wp2 = run('workpath ../..')>>><<wp2>>
```

These define a couple of Python variables that are substituted into the file names later in the file with Python expressions like this
```
     GRDNAME == <<"{}/grd/roms_grd.nc".format(wp2)>>
```

The workpath script, which is called here, takes a file name in the area on Maui from which the model is run (/nesi/project) and converts it into a file name in the area that is suitable for storing large files (/nesi/nobackup). The latter is, as the name suggests, not backed up
and is suitable for very large files. If you look at any of the numbered ROMS input files (rom001.in, etc) you can see the results of this conversion.
