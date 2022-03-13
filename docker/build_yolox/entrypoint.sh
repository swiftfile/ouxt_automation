#!/bin/bash
cd demo/TensorRT/cpp
mkdir build
cd build
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-10.2/targets/aarch64-linux/lib
cmake ../ -DCMAKE_LIBRARY_PATH=/usr/local/cuda-10.2/targets/aarch64-linux/lib -DCUDA_CUDART_LIBRARY=/usr/local/cuda-10.2/targets/aarch64-linux/lib -DCMAKE_CXX_FLAGS='-Wl,--allow-shlib-undefined'
make -j12
while :; do sleep 10; done