#!/bin/bash
#SBATCH --ntasks=32                   # number of MPI tasks/cores
#SBATCH --nodes=1                     # number of nodes (1 node with 32 cores)
#SBATCH --time=40:00:00               # walltime
#SBATCH --output=out/lpj_run.%j.out   # standard output
#SBATCH --error=out/lpj_run.%j.err    # error output
#SBATCH --mail-user=rvitali@envs.au.dk
#SBATCH --mail-type=BEGIN,END,FAIL

set -e  # Exit on any error

cd $SLURM_SUBMIT_DIR

# Load needed modules
module purge
module load intel/2018b
module load iimpi/2018b
module load HDF5/1.10.2-intel-2018b
module load netCDF/4.6.1-intel-2018b

# Ensure netcdf-fortran is found
export LD_LIBRARY_PATH=/home/rayvit/local/netcdf-fortran-4.5.0/lib:$LD_LIBRARY_PATH

# Run the model with your parameters
mpirun -np 32 ~/LPJ_runs/LPJ_standard/src/lpj joboptions/standard_run.namelist -180/180/-90/90 /work/users/rayvit/LPJ_out/lpj_sophia_test_32core.nc

