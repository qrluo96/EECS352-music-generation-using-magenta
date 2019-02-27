#!/bin/bash

pianoroll_rnn_nade_train \
--run_dir=./tmp/pianoroll_rnn_nade/logdir/run1 \
--sequence_example_file=./datasets/chopin.tfrecord \
--hparams="batch_size=48,rnn_layer_sizes=[128]" \
--num_training_steps=20000