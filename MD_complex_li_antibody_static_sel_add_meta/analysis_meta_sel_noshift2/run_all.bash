

cd ../
#for name in   Remd*_run  Sof*_run   Azith*_run  Pra*_run  Amox*_run
for name in   MD_*

do

	cd $name
mv fes.dat fes.dat_bc
plumed sum_hills --hills HILLS   

cp fes.dat   ../analysis_meta_sel_noshift/$name'_fes.dat'

cd ..


done
