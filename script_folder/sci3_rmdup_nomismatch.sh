
input_folder=$1
sample=$2
output_folder=$3
mismatch=$4

source activate sci
python="/home/groups/willhies/anaconda3/envs/sci/bin/python2.7"
python_script="/home/users/rshad/sci-RNA-seq3_pipeline/script_folder/rm_dup_barcode_UMI_no_mismatch.py"

echo Filtering sample: $sample

$python $python_script $input_folder/$sample.sam $output_folder/$sample.sam $mismatch

echo Filtering $sample done.