TEST_DIR=/mnt/gpu_data1/kubapok/crowd-sensing/data/test/images
for i in  $TEST_DIR/*jpg ; do touch "test_predictions/out/labels/$(basename $i | sed 's|jpg|txt|' )" ; done
for i  in ./test_predictions/out/labels/*txt ; do python change_to_nonrelative.py $i $i-nonrelative $(file ./test_predictions/out/$(basename $i | sed 's|txt|jpg|' ) | awk -F ' ' '{print $18}' ) ; done
cat ./test_predictions/out/labels/*nonrelative | sort > submission.txt


grep India submission.txt > India_sub.txt
grep China submission.txt > China_sub.txt
grep United submission.txt > USA_sub.txt
grep Norway submission.txt > Norway_sub.txt