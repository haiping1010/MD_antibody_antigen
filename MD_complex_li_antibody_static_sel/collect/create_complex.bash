for name in  *_f.pdb  xxxx_antibody.pdb
do

base=${name%.pdb}
grep '^ATOM\|^TER\|^END'  $name  > 'complex_'$base'.pdb'

grep '^ATOM\|^TER\|^END'  xxxx_antigen.pdb  >> 'complex_'$base'.pdb'





done
