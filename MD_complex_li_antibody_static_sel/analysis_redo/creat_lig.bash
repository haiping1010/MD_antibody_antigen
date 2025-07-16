#for name in *_complex.pdb

cat   charge_n.txt  | while read line

do

IFS=', ' read -r -a array <<< $line
name=${array[0]}
charge=${array[1]}
base=${name%_lig}

mv $base'_lig.mol2'  $base'_lig_n.mol2'
acpype -i  $base'_lig_n.mol2'   -n ${array[1]}

done
