cd ../
for name in   MD_*
do

cd $name

bash ../run_ana_h_ns.bash


for filename in hbond.xvg
do
   base=${filename%.xvg}
   cp -r  $filename   ../analysis_redo/$name'_'$filename

done


cd  ..


done

