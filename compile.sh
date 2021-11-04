#!/bin/bash

module load intel-parallel-studio/2020
module load netcdf-fortran-intel/4.5.3


make CLEAN
../MITgcm/tools/genmake2 -rootdir ../MITgcm -mpi -mods ../code -of ../code/linux_ia64_ifort_ginsburg
make depend
make
