

cd ../
for name in    complex_new_antibody_*_f_run
do

	cd $name
rm fes.dat
plumed sum_hills --hills HILLS   --mintozero

cp fes.dat   ../analysis_meta/$name'_fes.dat'

cd ..


done
