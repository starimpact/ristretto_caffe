#!/usr/bin/env sh

LD_LIBRARY_PATH=/usr/local/lib/ ./build/tools/caffe test \
	--model=models/vgg19/quantize/quantized_zm_imp.prototxt \
	--weights=models/vgg19/quantize/snapshot_iter_100000_inference.caffemodel \
	--gpu=4 --iterations=500
> result.txt
