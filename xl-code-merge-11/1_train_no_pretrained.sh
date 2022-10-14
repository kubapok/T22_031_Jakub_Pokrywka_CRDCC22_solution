#export CUDA_VISIBLE_DEVICES='3' 
python ~/yolov5/train.py --img 1280 --project merge --name run  --batch 96  --epochs 90 --data cfg.yaml  --cfg yolov5x6.yaml --save-period 10 --cache ram
