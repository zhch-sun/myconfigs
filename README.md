# myconfigs

caffe_ssd install with anaconda:

First download anaconda install file, then intall it.

run conda_install.sh, this will create an environment for caffe. 

change python_path in caffe's Makefile.config to the ~/ananconda3/envs/caffe/ 

also change python lib position.

make caffe -j && make py

for the terminal to train or test caffe, remember to add /ananconda3/envs/caffe/lib to LD_LIBRARY_PATH, although this is not a recommeded way to use shared library, it save you some time to compile opencv and other dependencies.
