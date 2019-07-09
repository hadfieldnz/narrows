#! /bin/bash
#SBATCH --partition=nesi_research
#SBATCH --job-name=ROMS
#SBATCH --output=rom002.log
#SBATCH --error=rom002.err
#SBATCH --nodes=1
#SBATCH --ntasks=40
#SBATCH --time=03:00:00
#SBATCH --exclusive
#SBATCH --hint=nomultithread
date
srun ./romsM rom002.in
date
sbatch rom003.sl
