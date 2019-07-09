#! /bin/bash
#SBATCH --partition=nesi_research
#SBATCH --job-name=ROMS
#SBATCH --output=rom022.log
#SBATCH --error=rom022.err
#SBATCH --nodes=1
#SBATCH --ntasks=40
#SBATCH --time=03:00:00
#SBATCH --exclusive
#SBATCH --hint=nomultithread
date
srun ./romsM rom022.in
date
sbatch rom023.sl
