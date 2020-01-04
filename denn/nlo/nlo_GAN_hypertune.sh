#!/bin/bash
#SBATCH -J nlo_GAN_hypertune
#SBATCH -p shared
#SBATCH -n 256
#SBATCH --mem 32000 # Memory request (in MB)
#SBATCH -t 0-24:00 # Maximum execution time (D-HH:MM)
#SBATCH -o logs.out # Standard output
#SBATCH -e logs.err # Standard error
module load Anaconda3/5.0.1-fasrc01
source activate denn
python hypertune.py --gan --ncpu 256 --fname nlo_GAN_hypertune_big3.csv
