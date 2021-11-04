#!/bin/sh
#
# Simple "Hello World" submit script for Slurm.
#
# Replace <ACCOUNT> with your account name before submitting.
#
#SBATCH --account=abernathey            # The account name for the job.
#SBATCH --job-name=channel_template    # The job name.
#SBATCH -N 1                     # The number of nodes to use
                                 #(note there are 32 cores per node)
#SBATCH --exclusive                                 
#SBATCH --time=00:10:00              # The time the job will take to run.
#SBATCH --mail-type=ALL
#SBATCH --mail-user=db3157@columbia.edu

module load intel-parallel-studio/2020
module load netcdf-fortran-intel/4.5.3

mpirun -n 16 ./mitgcmuv

# End of script
