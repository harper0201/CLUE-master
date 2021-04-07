#!/usr/bin/env bash

CURRENT_DIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
export MODEL_NAME=roberta_wwm_ext_base
export OUTPUT_DIR=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\mrc_pytorch\check_points
export BERT_DIR=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\mrc_pytorch\check_points\prev_trained_model/pytorch_model
export GLUE_DIR=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\mrc_pytorch\mrc_data\CMRC2018 # set your data dir
TASK_NAME="CMRC2018"

python run_mrc.py
  --gpu_ids="0,1"
  --train_epochs=2
  --n_batch=4
  --lr=3e-5
  --warmup_rate=0.1
  --max_seq_length=512
  --task_name=cmrc2018
  --vocab_file=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\mrc_pytorch\check_points\prev_trained_model\roberta_wwm_ext_base\vocab.txt
  --bert_config_file=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\mrc_pytorch\check_points\prev_trained_model\roberta_wwm_ext_base\bert_config.json
  --init_restore_dir=C:/Users/96344/Desktop/chinese_L-12_H-768_A-12/chinese_L-12_H-768_A-12/pytorch_model.pth
  --train_dir=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\classifier_pytorch\outputs\CRMC2018_output\train_features.json
  --train_file=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\mrc_pytorch\mrc_data\CMRC2018\cmrc2018_train.json
  --dev_dir1=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\classifier_pytorch\outputs\CRMC2018_output\dev_examples.json
  --dev_dir2=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\classifier_pytorch\outputs\CRMC2018_output\dev_features.json
  --dev_file=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\mrc_pytorch\mrc_data\CMRC2018\cmrc2018_dev.json
  --checkpoint_dir=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\mrc_pytorch\check_points

python test_mrc.py \
  --gpu_ids="0" \
  --n_batch=4 \
  --max_seq_length=512 \
  --vocab_file=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\mrc_pytorch\check_points\prev_trained_model\roberta_wwm_ext_base\vocab.txt \
  --bert_config_file=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\mrc_pytorch\check_points\prev_trained_model\roberta_wwm_ext_base\bert_config.json \
  --init_restore_dir=C:/Users/96344/Desktop/chinese_L-12_H-768_A-12/chinese_L-12_H-768_A-12/pytorch_model.pth\
  --output_dir=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\classifier_pytorch\outputs\
  --test_dir1=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\classifier_pytorch\outputs\CRMC2018_output\test_examples.json \
  --test_dir2=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\classifier_pytorch\outputs\CRMC2018_output\test_features.json \
  --test_file=C:\Users\96344\Desktop\CLUE-master\CLUE-master\baselines\models_pytorch\classifier_pytorch\outputs\CRMC2018_output\cmrc2018_test_2k.json \




