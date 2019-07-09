#! /bin/bash
#SBATCH --partition=nesi_research
#SBATCH --job-name=ROMS
#SBATCH --output=rom004.log
#SBATCH --error=rom004.err
#SBATCH --nodes=1
#SBATCH --ntasks=40
#SBATCH --time=12:00:00
#SBATCH --exclusive
#SBATCH --hint=nomultithread
date
srun ./romsM rom004.in
date
sbatch rom005.sl
