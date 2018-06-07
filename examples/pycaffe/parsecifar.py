import sys
#sys.path.insert(0, '/data/mingzhang/ristretto/caffe/build/python')
sys.path.insert(0, '/data/mingzhang/ristretto/caffe/python')

import caffe
import numpy as np

MEAN_FILE = '/data/mingzhang/ristretto/caffe/data/cifar10/mean.binaryproto'
means_txt = '/data/mingzhang/ristretto/caffe/data/cifar10/means.txt'

mf = open(means_txt, 'w')
mean_blob = caffe.proto.caffe_pb2.BlobProto()
mean_blob.ParseFromString(open(MEAN_FILE, 'rb').read())

mean_npy = caffe.io.blobproto_to_array(mean_blob)
mean_npy.shape = (-1, 1)
for m in mean_npy:
  mf.write('%ff, ' % m)
mf.close






