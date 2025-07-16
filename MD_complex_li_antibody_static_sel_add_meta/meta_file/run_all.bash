cd ..

#for folder in 4076-????_run
#for folder in  1???-????_run  {3..4}???-????_run  8???-????_run
#for folder in   Actinomycin_D_run  Amenamevir_run

#1151-0182_run  4061-0059_run  4290-0122_run  8003-3072_run   C066-2881_run  C301-4559_run  D517-1105_run  G786-0023_run  G786-0191_run
#3660-0512_run  4290-0112_run  4290-0140_run  8525-0520F_run  C301-4485_run  D517-1063_run  D517-1112_run  G786-0133_run


for folder  in    *_run
#for folder  in 	   ????-????_run
do

cd $folder


cp  -r  ../meta_file/locate_pep.py  ../meta_file/prod.mdp   ../meta_file/gromac_meta.bash   ../meta_file/job_meta.json   ../meta_file/plumed.dat    .

#bash gromac_meta.bash

lbg job submit -i job_meta.json -p ./ -r /share/output13/$folder/

cd  ..

done



