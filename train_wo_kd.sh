# !/bin/bash 

for lr in 1e-4
do
    # Imagenet
    torchrun --standalone --nproc_per_node 8 -m train --batch 256 --exp_name truemedia-distil-dire-imagenet-lr${lr}wo_kd --datasets distil-train-imagenet --datasets_test distil-test-sdv1-imagenet --epoch 50 --lr $lr --kd False

    # Celeba-HQ
    torchrun --standalone --nproc_per_node 8 -m train --batch 256 --exp_name truemedia-distil-dire-celebahq-lr${lr}wo_kd --datasets distil-train-celebahq --datasets_test distil-test-midjourney-celebahq --epoch 50 --lr $lr --kd False
done