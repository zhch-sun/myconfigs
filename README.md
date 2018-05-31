# myconfigs

caffe_ssd install with anaconda:
First download anaconda install file, then intall it.
run conda_install.sh, this will create an environment for caffe. 

change conda_home in caffe's Makefile to the ~/ananconda3/envs/caffe/lib
also change python lib position.

make caffe -j && make py
for the terminal to train or test caffe, remember to add /ananconda3/envs/caffe/lib to LD_LIBRARY_PATH, although this is not a recommeded way, it's save the time to compile opencv.
