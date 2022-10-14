#export CUDA_VISIBLE_DEVICES='3' 
python ~/yolov5/train.py --img 1280 --project merge --name run  --batch 96 --weights ../xl-code-merge-11-hyp-medium/merge/run/weights/last.pt --epochs 280 --data cfg.yaml  --cfg yolov5x6.yaml --save-period 10 --cache ram  --hyp ./hyp.scratch-high.yaml
