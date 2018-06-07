#!/usr/bin/env sh

LD_LIBRARY_PATH=/usr/local/lib/ ./build/tools/caffe test \
	--model=models/vgg19/quantize/quantized_zm.prototxt \
	--weights=models/vgg19/quantize/snapshot_iter_100000_inference.caffemodel \
	--iterations=1
> result.txt
