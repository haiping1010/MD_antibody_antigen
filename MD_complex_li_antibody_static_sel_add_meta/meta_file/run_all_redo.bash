cd ..

#for folder in 4076-????_run
#for folder in  1???-????_run  {3..4}???-????_run  8???-????_run

#for folder in  cd3_command3_*_run

#for folder in   design*complex_new_antibody_*_run    

cat anti_list_t.txt | while read folder

#for folder in    MD_a_740003     MD_fiin-2     MD_probucol  MD_ARRY380    MD_FIIN-3   MD_radotinib MD_ast_487    MD_flumatinib    MD_Rociletinib

#MD_CHMFL-BMX-078           MD_GNF-7               MD_tg101209  MD_dcc-2036    MD_Golvatinib   MD_Torin_1
#MD_DDR1-IN-2                         MD_k_0859_complex      MD_um-164 MD_Dehydroandrographolide_succinate  MD_masitinib           MD_ZCL_278  MD_Fedratini                         MD_nilotinib          MD_fenretinide                       MD_Nilotinib_complete

do
echo $folder

cd $folder
cp  -r   ../meta_file/prod.mdp   ../meta_file/locate_pep.py  ../meta_file/gromac_meta.bash   ../meta_file/plumed.dat    .

#bash  gromac_meta.bash
nohup bash gromac_meta.bash  &
sleep 2s
cd  ..

done



