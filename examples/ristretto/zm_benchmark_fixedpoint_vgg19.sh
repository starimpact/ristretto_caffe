#!/usr/bin/env sh

./build/tools/caffe test \
	--model=models/vgg19/quantize/quantized_zm.prototxt \
	--weights=models/vgg19/quantize/snapshot_iter_100000_inference.caffemodel \
	--gpu=4 --iterations=500
> result.txt
