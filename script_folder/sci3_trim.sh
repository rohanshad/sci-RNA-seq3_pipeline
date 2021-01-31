
input_folder=$1
sample=$2
output_folder=$3

#module load python2
module load biology py-cutadapt #py2.7 version 1.8.3
module load biology trim_galore #default v0.5.0m
echo Trimming sample: $sample
trim_galore $input_folder/$sample*.gz -a AAAAAAAA --three_prime_clip_R1 1 -o $output_folder
#module unload python2
echo Trimming $sample done.

