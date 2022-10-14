export CUDA_VISIBLE_DEVICES=0
python ~/yolov5/detect.py --augment --source /mnt/gpu_data1/kubapok/crowd-sensing/data/test/images --imgsz 1280 --weights  ./merge/run/weights/{epoch200,epoch250,last}.pt ../xl-code-merge-11-hyp-medium/merge/run/weights/{epoch190,last}.pt ../xl-code-merge-11/merge/run/weights/{epoch80,last}.pt ../code-merge-5-other-labels/merge/run/weights/{best,last}.pt  --name out --project test_predictions --save-txt --max-det 5 --save-conf --classes  1 2 3 4  \

