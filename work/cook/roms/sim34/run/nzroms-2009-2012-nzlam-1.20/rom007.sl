#! /bin/bash
#SBATCH --partition=nesi_research
#SBATCH --job-name=ROMS
#SBATCH --output=rom007.log
#SBATCH --error=rom007.err
#SBATCH --nodes=1
#SBATCH --ntasks=40
#SBATCH --time=03:00:00
#SBATCH --exclusive
#SBATCH --hint=nomultithread
date
srun ./romsM rom007.in
date
sbatch rom008.sl
