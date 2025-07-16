#module load  gnuplot/5.0.5-gcc-7.3.1

for name in XX*_rms_out_CA.xvg
do
	base=${name%_CA.xvg}
	basenn=${name%_rms_out_CA.xvg}
	basennn=${basenn:3 }
	basennnn=${basennn//_/\\_}
	echo $basennnn
gnuplot  -c  "rmsd.p"   $name  $base'_lig.xvg'   $base'.png'  $basennnn


done








