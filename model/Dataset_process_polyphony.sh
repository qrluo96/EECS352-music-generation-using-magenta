#!/bin/bash

COMPOSER=modern

INPUT_DIRECTORY=./$COMPOSER

SEQUENCES_TFRECORD=./datasets/$COMPOSER.tfrecord
SEQUENCES_EXAMPLES_DIRECTORY=./datasets/$COMPOSER/sequence_examples

convert_dir_to_note_sequences \
  --input_dir=$INPUT_DIRECTORY \
  --output_file=$SEQUENCES_TFRECORD \
  --recursive

polyphony_rnn_create_dataset \
  --input=$SEQUENCES_TFRECORD \
  --output_dir=$SEQUENCES_EXAMPLES_DIRECTORY \
  --eval_ratio=0.10