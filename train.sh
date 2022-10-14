for dir in code-merge-5-other-labels  xl-code-merge-11/ xl-code-merge-11-hyp-medium/ xl-code-merge-11-hyp-high/ 
do
	( cd $dir ; bash 1_train_no_pretrained.sh ) 
done
