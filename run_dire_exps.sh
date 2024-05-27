# !/bin/bash

CKPT="/workspace/DistilDIRE/experiments/dire_reprod-imagenet-lr1e-3/ckpt/model_epoch_4.pth"
python3 -m test --test True --datasets distil-test-adm-imagenet --pretrained_weights $CKPT --reproduce_dire True
python3 -m test --test True --datasets distil-test-sdv1-imagenet --pretrained_weights $CKPT --reproduce_dire True
python3 -m test --test True --datasets distil-test-midjourney-celebahq --pretrained_weights $CKPT --reproduce_dire True
python3 -m test --test True --datasets distil-test-dalle2-celebahq --pretrained_weights $CKPT --reproduce_dire True
python3 -m test --test True --datasets distil-test-if-celebahq --pretrained_weights $CKPT --reproduce_dire True
python3 -m test --test True --datasets distil-test-sdv2-celebahq --pretrained_weights $CKPT --reproduce_dire True


CKPT="/workspace/DistilDIRE/experiments/dire_reprod-celebahq-lr1e-3/ckpt/model_epoch_14.pth"
python3 -m test --test True --datasets distil-test-adm-imagenet --pretrained_weights $CKPT --reproduce_dire True
python3 -m test --test True --datasets distil-test-sdv1-imagenet --pretrained_weights $CKPT --reproduce_dire True
python3 -m test --test True --datasets distil-test-midjourney-celebahq --pretrained_weights $CKPT --reproduce_dire True
python3 -m test --test True --datasets distil-test-dalle2-celebahq --pretrained_weights $CKPT --reproduce_dire True
python3 -m test --test True --datasets distil-test-if-celebahq --pretrained_weights $CKPT --reproduce_dire True
python3 -m test --test True --datasets distil-test-sdv2-celebahq --pretrained_weights $CKPT --reproduce_dire True







