#! /bin/bash
#SBATCH --partition=nesi_research
#SBATCH --job-name=ROMS
#SBATCH --output=rom016.log
#SBATCH --error=rom016.err
#SBATCH --nodes=1
#SBATCH --ntasks=40
#SBATCH --time=03:00:00
#SBATCH --exclusive
#SBATCH --hint=nomultithread
date
srun ./romsM rom016.in
date
sbatch rom017.sl
