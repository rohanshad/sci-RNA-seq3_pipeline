
input_folder=$1
sample=$2
output_folder=$3
barcode_file=$4
cutoff=$5

mismatch=1

source activate sci
python="/home/groups/willhies/anaconda3/envs/sci/bin/python2.7"
python_script="/home/users/rshad/sci-RNA-seq3_pipeline/script_folder/sam_split.py"

$python $python_script $input_folder/$sample.sam $barcode_file $output_folder $cutoff
echo splitting sample done: $sample