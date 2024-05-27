# !/bin/bash 

lr=1e-3
for kd in 1.5 2; do
    # Celeba-HQ
    torchrun --standalone --nproc_per_node 1 -m train --batch 256 --exp_name truemedia-distil-dire-celebahq-lr$lr-kdw$kd --datasets distil-train-celebahq --datasets_test distil-test-if-celebahq --epoch 15 --lr $lr --kd_weight $kd
done
