#!/usr/bin/env sh

LD_LIBRARY_PATH=/usr/local/lib/ ./build/tools/caffe train \
	--solver=models/vgg19/zm_quantize/solver_finetune.prototxt \
	--weights=models/vgg19/zm_quantize/snapshot_iter_100000_inference.caffemodel \
