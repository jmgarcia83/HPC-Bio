#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --workdir=/home/jmgarcia/execs
#SBATCH -J APP-AVX
#SBATCH --cpus-per-task=26
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es


time for (( i=1; i <= 4; i++ ))
do
echo $i
./helloflops1-AVX
echo
done

time seq 4 | parallel -n0 ./helloflops1-AVX

