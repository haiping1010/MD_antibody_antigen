This is the MD and metadynamics part script examples of paper "Significantly Enhancing Human Antibody Affinity via Deep Learning and Computational Biology-Guided Single-Point Mutations".

MD simulaton
1. prepare the initial complexes for MD simulation.
cd MD_complex_li_antibody_deep_sel_activin
cd collection
##make the mutated antibody combined with antigen for MD simulation usage
bash create_complex.bash
cp -r  complex_new_antibody_*_f.pdb ../
cd ../
###lbg job submit command is used in bohrium, because we run our MD in https://www.bohrium.com/, for user run in usual linux system,
### can change this line into "nohup bash  gromac2.sh"
bash run_all_files.bash    


Metadynamics simulaton

