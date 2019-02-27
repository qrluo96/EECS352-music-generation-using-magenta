#!/bin/bash

INPUT_DIRECTORY=/home/qrluo/MagentaProject/chopin

# TFRecord file that will contain NoteSequence protocol buffers.
SEQUENCES_TFRECORD=/home/qrluo/MagentaProject/tmp/notesequences.tfrecord

convert_dir_to_note_sequences \
  --input_dir=$INPUT_DIRECTORY \
  --output_file=$SEQUENCES_TFRECORD \
  --recursive