#! /bin/bash
#SBATCH --partition=nesi_research
#SBATCH --job-name=ROMS
#SBATCH --output=rom019.log
#SBATCH --error=rom019.err
#SBATCH --nodes=1
#SBATCH --ntasks=40
#SBATCH --time=06:00:00
#SBATCH --exclusive
#SBATCH --hint=nomultithread
date
srun ./romsM rom019.in
date
sbatch rom020.sl
