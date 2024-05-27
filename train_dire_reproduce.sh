# !/bin/bash 


lr=1e-3
# Imagenet
torchrun --standalone --nproc_per_node 1 -m train --batch 256 --exp_name dire_reprod-imagenet-lr$lr --datasets distil-train-imagenet --datasets_test distil-test-sdv1-imagenet --epoch 15 --lr $lr --reproduce_dire True

# Celeba-HQ
torchrun --standalone --nproc_per_node 1 -m train --batch 256 --exp_name dire_reprod-celebahq-lr$lr --datasets distil-train-celebahq --datasets_test distil-test-midjourney-celebahq --epoch 15 --lr $lr --reproduce_dire True