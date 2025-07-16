#!/bin/bash



aa=`python locate_pep.py`

#IFS='-' read -r -a array <<< $aa

bb=$((aa-3244))

antigen='1-'$bb

antibody=$bb'-'$aa

echo $antibody

gmx make_ndx  -f  npt2.gro   -o   tst.ndx <<<"a $antigen &  3
name 17  antigen
a $antibody  &  3
name 18  antibody
q
"



gmx grompp -f prod.mdp -c npt2.gro  -r npt2.gro -p topol.top -o prod.tpr -maxwarn 1 -n tst.ndx &&
gmx mdrun  -deffnm prod -plumed plumed.dat -mp topol.top  -ntomp   8














