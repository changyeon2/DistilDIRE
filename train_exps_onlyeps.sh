# !/bin/bash 

lr=1e-3
kd=1.
# Celeba-HQ
torchrun --standalone --nproc_per_node 8 -m train --batch 128 --exp_name truemedia-distil-dire-celebahq-lr$lr-kdw$kd --datasets distil-train-celebahq --datasets_test distil-test-sdv1-imagenet --epoch 20 --lr $lr --kd_weight $kd 
torchrun --standalone --nproc_per_node 8 -m train --batch 128 --exp_name truemedia-distil-dire-celebahq-lr$lr-wokd --datasets distil-train-celebahq --datasets_test distil-test-sdv1-imagenet --epoch 20 --lr $lr  --kd False

kd=0.5
lr=1e-4
torchrun --standalone --nproc_per_node 8 -m train --batch 128 --exp_name truemedia-distil-dire-imagenet-lr$lr-kdw$kd --datasets distil-train-imagenet --datasets_test distil-test-sdv1-imagenet --epoch 20 --lr $lr --kd_weight $kd 
torchrun --standalone --nproc_per_node 8 -m train --batch 128 --exp_name truemedia-distil-dire-imagenet-lr$lr-wokd --datasets distil-train-imagenet --datasets_test distil-test-sdv1-imagenet --epoch 20 --lr $lr  --kd False
