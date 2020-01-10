#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --workdir=/home/jmgarcia/execs
#SBATCH -J APP-AVX
#SBATCH --cpus-per-task=26
#SBATCH --output=salida-std
#SBATCH --error=salida-err
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

seq 10 | parallel echo Hola Mundo {%} of {= '$_=total_jobs($_)' =}
echo
echo ahora ejecutamos un fichero que no existe
./file_no_exits
