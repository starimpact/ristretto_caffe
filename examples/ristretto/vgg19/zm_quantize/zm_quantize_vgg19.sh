#!/usr/bin/env sh

LD_LIBRARY_PATH=/usr/local/lib/ ./build/tools/ristretto quantize \
	--model=models/vgg19/zm_quantize/train_val.prototxt \
	--weights=models/vgg19/zm_quantize/snapshot_iter_100000_inference.caffemodel \
	--model_quantized=models/vgg19/zm_quantize/quantized.prototxt \
	--trimming_mode=dynamic_fixed_point --gpu=0 --iterations=50 \
	--error_margin=3
