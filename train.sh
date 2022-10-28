for dir in {l,xl}-model-hyps-{low,med,high}
do
	( cd $dir ; bash 1_train.sh )
done
