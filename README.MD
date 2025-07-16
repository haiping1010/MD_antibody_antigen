# This is the MD and metadynamics part script examples of paper "Significantly Enhancing Human Antibody Affinity via Deep Learning and Computational Biology-Guided Single-Point Mutations".

# prerequisite
Install gromacs with Plumed


# MD simulaton
1. prepare the initial complexes for MD simulation.
cd MD_complex_li_antibody_static_sel

cd collection

##make the mutated antibody combined with antigen for MD simulation usage

bash create_complex.bash

cp -r  complex_new_antibody_*_f.pdb ../

cd ../

2. run the MD simulation

##lbg job submit command is used in bohrium, because we run our MD in https://www.bohrium.com/, for user run in usual linux system,
can change this line into "nohup bash  gromac2.sh&"

bash run_all_files.bash    


# Metadynamics simulaton
1. prepare the initial file for metadynamics simulation

cd MD_complex_li_antibody_static_sel_add_meta

##mv the finished MD simulation folder to here, for example complex_new_antibody_109L_GLU_f_run

2. Run the Metadynamics simulation

cd meta_file

##lbg job submit command is used in bohrium, because we run our MD in https://www.bohrium.com/, for user run in usual linux system,
can change this line into "nohup bash gromac_meta.bash&"

bash run_all.bash



For more detailed information or encounted issues can contact zhanghaiping@suat-sz.edu.cn
