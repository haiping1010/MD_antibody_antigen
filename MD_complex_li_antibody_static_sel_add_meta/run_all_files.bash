for  name in   complex_new_antibody_*_f.pdb 
do
base=${name%.pdb}

##mkdir $base'_run'

##cp -r run_files/*  $base'_run'/
#cp -r run_files/gromac2.sh  $base'_run'/
##cp -r  pocket/$base'_lig_n.acpype'/$base'_lig_n_GMX.gro'   pocket/$base'_lig_n.acpype'/$base'_lig_n_GMX.itp'  pocket/$base'_lig_n.acpype'/$base'_lig_n_GMX.top'   $base'_run'/

##cp -r pocket/$base'_poc_ter_out.pdb'   $base'_run'/

cd $base'_run'/

cp -r ../gromac2.sh  .
cp -r ../job.json .
lbg job submit -i job.json -p ./  -r /share/output11/$base'_run'



###bash run2.bash $base
#bash  gromac2.sh
#nohup bash  gromac2.sh &

#sbatch  gromac2.sh 
#sleep 2s

cd ..

done
