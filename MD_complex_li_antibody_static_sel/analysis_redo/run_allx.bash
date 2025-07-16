
for name in   *_lig_n.acpype
do

base=${name%_lig_n.acpype}

cd  'MD_'$base

#	cp -r newpdb.pdb  run2.bash  $name/

#bash run2.bash

rm nohup.out

sed -i 's/ntomp 8/ntomp 6/g'  gromac2.sh
nohup bash gromac2.sh &

cd ../


done
