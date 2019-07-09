#! /bin/bash
#SBATCH --partition=nesi_research
#SBATCH --job-name=ROMS
#SBATCH --output=rom005.log
#SBATCH --error=rom005.err
#SBATCH --nodes=1
#SBATCH --ntasks=40
#SBATCH --time=12:00:00
#SBATCH --exclusive
#SBATCH --hint=nomultithread
date
srun ./romsM rom005.in
date
