#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --workdir=/home/jmgarcia/execs
#SBATCH -J APP-AVX
#SBATCH --cpus-per-task=26
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

echo Vamos a jugar con imágenes
echo

convert -verbose figs/Escandinavian.bmp jpg/Escandinavian.png

echo ahora todas 

find -maxdepth 2 -name "*.eps" | parallel convert -verbose {} png/{/.}.png
