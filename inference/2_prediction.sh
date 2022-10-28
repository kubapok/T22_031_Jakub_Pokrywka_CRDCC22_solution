python ~/yolov5/detect.py --augment --source /mnt/gpu_data1/kubapok/crowd-sensing/data/test/images --imgsz 1280 --weights \
    ../l-model-hyps-low/merge/run/weights/{best,last}.pt \
    ../l-model-hyps-med/merge/run/weights/{best,last}.pt \
    ../l-model-hyps-high/merge/run/weights/{best,last}.pt \
    ../xl-model-hyps-low/merge/run/weights/{best,last}.pt \
    ../xl-model-hyps-med/merge/run/weights/{best,last}.pt \
    ../xl-model-hyps-high/merge/run/weights/{best,last}.pt \
    --name out --project test_predictions --save-txt --max-det 5 --save-conf --classes  1 2 3 4  \

