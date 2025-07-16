

source /public/software/profile.d/compiler_intel-compiler-2017.5.239.sh
source /public/software/profile.d/mpi_intelmpi-2017.4.239.sh



export LD_LIBRARY_PATH=/public/home/hpzhang/cuda-10.1/lib64:/public/home/hpzhang/program/plumed/lib:$LD_LIBRARY_PATH
path_gmx='/public/home/hpzhang/program/gromacs-plumed_gpu1/bin'

aa=`python locate_pep.py`

IFS='-' read -r -a array <<< $aa

echo ${array[0]}
value=${array[0]}
echo $value
tem=$[value-1]
echo $tem
pro='1-'$tem
echo $pro

gmx_mpi make_ndx  -f  npt2.gro   -o   tst.ndx <<<"a $aa
name 18 PEP
a $pro
name 19 Protein_1
q
"





mpirun  -np 1    $path_gmx/gmx_mpi grompp -f prod.mdp -c npt2.gro  -r npt2.gro -p topol.top -o prod.tpr -maxwarn 1 -n tst.ndx &&
mpirun -np  1   $path_gmx/gmx_mpi mdrun  -deffnm prod -plumed plumed.dat -mp topol.top  -ntomp 2


