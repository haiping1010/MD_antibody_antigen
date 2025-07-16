cd ../
for name in  ????-????_run
do

cd $name

#bash ../run_ana.bash


for filename in npt2_out.xtc
do
   base=${filename%.xvg}
   cp -r  $filename   ../analysis/$name'_'$filename
   #cp -r  npt2_outx.xtc    ../analysis/$name'npt2_outx.xtc'
   cp -r em.gro   ../analysis/$name'_em.gro'
done


cd  ..


done

