for name in   D*_lig_n.acpype  F*_lig_n.acpype
do

base=${name%_lig_n.acpype}

mkdir  'MD_'$base
echo 'MD_'$base
cp  -r  $name/$base'_lig_n_GMX.itp'      'MD_'$base/$base'_lig_n_GMX.itp'

#sed -i "s/_lig_nn/_lig_n/g"  'MD_'$base/$base'_lig_n_GMX.itp'  
cp  -r  $name/$base'_lig_n_GMX.gro'      'MD_'$base/$base'_lig_n_GMX.gro'

cp -r  cp.bash 'MD_'$base

cd 'MD_'$base

bash cp.bash

bash run2.bash

nohup bash gromac2.sh &

cd ..



done
