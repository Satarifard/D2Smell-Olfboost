#!/usr/bin/env bash
#SBATCH -A berzelius-2024-123
#SBATCH -t 0-11:0:0
#SBATCH --gres gpu:1
#SBATCH --mail-type "BEGIN,END,FAIL"
#SBATCH --mail-user "yinw@kth.se"
#SBATCH --output logs/train.log
#SBATCH --error logs/train.log


nvidia-smi
module load Anaconda/2021.05-nsc1
conda activate olf

python3 train/percept_regressor.py
python3 train/mixture_regressor.py