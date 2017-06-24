#!/bin/csh
#SBATCH --time=72:00:00          # walltime, abbreviated by -t
#SBATCH --nodes=1                # number of cluster nodes, abbreviated by -N
#SBATCH -o ipyrad-%j.out-%N	 # name of the stdout, using the job number (%j) and the first n$
#SBATCH -e ipyrad-%j.err-%N	 # name of the stderr, using job and first node values
#SBATCH --ntasks=1               # number of MPI tasks, abbreviated by -n
# additional information for allocated clusters
#SBATCH --account=wolf           # account - abbreviated by -A
#SBATCH --partition=ember        # partition, abbreviated by -p
#SBATCH --mail-type=END
#SBATCH --mail-user=jenessa.lemon@gmail.com
#
# set data and working directories
setenv WORKDIR $HOME/new_eri
setenv SCRDIR /scratch/local
mkdir -p $SCRDIR
cp -r $WORKDIR/* $SCRDIR
cd $SCRDIR
#
# run the program
/uufs/chpc.utah.edu/common/home/u6009817/miniconda2/bin/ipyrad -p params-erisor.txt -s 7
#
# transfer output and remove scratch
cd ..
rsync -vz *.vcf /uufs/chpc.utah.edu/common/home/u6009817/new_eri/
#rm -r $SCRDIR

