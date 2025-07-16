#vmd -dispdev text -e I_should_read_the_doc.tcl 
#middle structure

echo 1 |  gmx pdb2gmx -f  $1'.pdb' -o 1AKI_processed.gro -ff amber99sb  -ignh  -merge all
##adding gro and top


gmx editconf -f 1AKI_processed.gro -o newbox.gro -c -d 1.0 -bt dodecahedron

# -center 5 5 5 -box 10 10 10

##editconf -f em.gro -o newbox.gro -center 3.2 2.181 2.4775 -box 6.560 15 4.36

gmx solvate -cp newbox.gro -cs spc216.gro -o solv.gro -p topol.top
gmx grompp  -f ions.mdp -c solv.gro -p topol.top -o ions1.tpr   -maxwarn 1

echo 13 | gmx genion -s ions1.tpr -o solv_ions.gro -p topol.top -pname NA -nname CL -neutral

#-np 40  
##X -CC-CV-X    4   20.60        180.0             2.         intrpol.bsd.on C6H6

##4086  4089  4095  4090     4
##4685  4688  4694  4689 
#; Include Mol-sm_m1-c1_GMX.itp topology
##include "Mol-sm_m1-c1_GMX.itp"


#[ molecules ]
#; Compound        #mols
#RNA                 1
#Mol-sm_m1-c1        1 
#SOL         32623
#K                40
