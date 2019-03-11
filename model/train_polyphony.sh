#!/bin/bash

COMPOSER=modern

SEQUENCES_EXAMPLES=./datasets/$COMPOSER/sequence_examples/training_poly_tracks.tfrecord

polyphony_rnn_train \
--run_dir=./tmp/polyphony_rnn/logdir/$COMPOSER \
--sequence_example_file=$SEQUENCES_EXAMPLES \
--hparams="batch_size=64,rnn_layer_sizes=[256,256,256]" \
--num_training_steps=10000