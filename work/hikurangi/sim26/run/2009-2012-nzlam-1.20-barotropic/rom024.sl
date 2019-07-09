#! /bin/bash
#SBATCH --partition=nesi_research
#SBATCH --job-name=ROMS
#SBATCH --output=rom024.log
#SBATCH --error=rom024.err
#SBATCH --nodes=1
#SBATCH --ntasks=40
#SBATCH --time=06:00:00
#SBATCH --exclusive
#SBATCH --hint=nomultithread
date
srun ./romsM rom024.in
date
sbatch rom025.sl
