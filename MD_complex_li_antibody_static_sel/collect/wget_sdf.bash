cat    summary_sort_sel_cutoff6_15.txt   | while read line
do

IFS=' ' read -r -a array <<< $line
##wget 'http://zinc15.docking.org/substances/'${array[0]}'.sdf'

cp -r     /data/zhanghp/program/antibody_design_deep_fragment2_larger_n/static_eval_cutoff10/${array[0]}  .

done

cat    summary_sort_sel_cutoff10_20.txt   | while read line
do

IFS=' ' read -r -a array <<< $line
##wget 'http://zinc15.docking.org/substances/'${array[0]}'.sdf'

cp -r      /data/zhanghp/program/antibody_design_deep_fragment2_larger_n/static_eval_cutoff10/${array[0]}  .

done

