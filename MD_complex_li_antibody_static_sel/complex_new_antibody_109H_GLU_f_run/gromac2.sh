
#mpirun -np 4 gmx  mdrun -v -deffnm nptxxx  -pin on -nb gpu  -ntomp 4 -npme 1 -pme gpu  -bonded gpu  -g  log.txt


#export CUDA_VISIBLE_DEVICES=1

gmx grompp -f minim.mdp -c solv_ions.gro -r solv_ions.gro  -p topol.top -o em.tpr&&
gmx mdrun -v -deffnm em  -ntomp 4 -ntmpi 2 &&

gmx grompp -f nvt.mdp -c em.gro -r em.gro -p topol.top -o nvt.tpr &&
gmx mdrun -v -deffnm nvt   -ntomp 4 -ntmpi 2 &&

gmx grompp -f md_pull_equitst.mdp -c nvt.gro -r nvt.gro -p topol.top -o npt1.tpr  &&
gmx mdrun -deffnm npt1    -ntomp  4 -ntmpi 2  &&


gmx grompp -f md_pull_equitst2.mdp -c npt1.gro -r npt1.gro -p topol.top -o npt2.tpr  &&
gmx mdrun -deffnm npt2    -ntomp  4  -ntmpi  2




#mpirun -np 10      gmx mdrun -s npt2.tpr -cpi state.cpt

