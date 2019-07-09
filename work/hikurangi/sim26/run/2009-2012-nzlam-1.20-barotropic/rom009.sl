#! /bin/bash
#SBATCH --partition=nesi_research
#SBATCH --job-name=ROMS
#SBATCH --output=rom009.log
#SBATCH --error=rom009.err
#SBATCH --nodes=1
#SBATCH --ntasks=40
#SBATCH --time=06:00:00
#SBATCH --exclusive
#SBATCH --hint=nomultithread
date
srun ./romsM rom009.in
date
sbatch rom010.sl
