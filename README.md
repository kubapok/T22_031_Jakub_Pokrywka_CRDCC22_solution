## Configuration

Install yolov5 ( https://github.com/ultralytics/yolov5 ) in home directory.

Dataset should be in yolo format (relative width and height in objects). Script `labels_to_jpg.py` may be used.

Change paths to train dataset in first line in `cfg.yaml` file in each directory.

Change path in `--source` parameter in test file in `xl-code-merge-11-hyp-high/2_prediction.sh`

Set test path variable `TEST_DIR` in `xl-code-merge-11-hyp-high/3_create_sub.sh`


## train

run
`bash train.sh`


## inference

run
`bash inference.sh`

The prediction will appear in `xl-code-merge-11-hyp-high` directory.