#!/bin/bash
#SBATCH -J stilbene_vacuum
#SBATCH -t 00:15:00
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=4
#SBATCH --nodes=1
#SBATCH --account=project_2003478
#SBATCH --reservation=gmx1

module purge
module load cp2k/8.1-gmx

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
export OMP_PLACES=cores

srun gmx_cp2k mdrun -npme 0 -s stilbene.tpr 
