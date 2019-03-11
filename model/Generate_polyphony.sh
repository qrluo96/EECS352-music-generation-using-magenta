#!/bin/bash

COMPOSER=modern

polyphony_rnn_generate \
--run_dir=./tmp/polyphony_rnn/logdir/$COMPOSER \
--hparams="batch_size=64,rnn_layer_sizes=[256,256,256]" \
--output_dir=./tmp/polyphony_rnn/generated/$COMPOSER \
--num_outputs=10 \
--num_steps=512 \
--primer_pitches="[67,64,60]" \
--condition_on_primer=true \
--beam_size=1 \
--inject_primer_during_generation=false

#--primer_pitches="[67,64,60]" \
# C major
#--primer_pitches="[59,55,52]" \
# E minor
#--primer_midi="beginning/chopinNbeginning.mid" \