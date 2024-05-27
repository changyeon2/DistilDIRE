# !/bin/bash
# CKPT=("/workspace/DistilDIRE/experiments/truemedia-distil-dire-celebahq-lr1e-3-kdw0.5-cat-ln/ckpt/model_epoch_13.pth" )
# python3 -m test --test True --datasets distil-test-adm-imagenet --pretrained_weights $CKPT 
# python3 -m test --test True --datasets distil-test-sdv1-imagenet --pretrained_weights $CKPT

# python3 -m test --test True --datasets distil-test-if-celebahq --pretrained_weights $CKPT 
# python3 -m test --test True --datasets distil-test-dalle2-celebahq --pretrained_weights $CKPT 
# python3 -m test --test True --datasets distil-test-sdv2-celebahq --pretrained_weights $CKPT 
# python3 -m test --test True --datasets distil-test-midjourney-celebahq --pretrained_weights $CKPT 


CKPT="/workspace/DistilDIRE/experiments/truemedia-distil-dire-imagenet-lr1e-3-kdw0.5-add/ckpt/model_epoch_37.pth"
python3 -m test --test True --datasets distil-test-adm-imagenet --pretrained_weights $CKPT 
python3 -m test --test True --datasets distil-test-sdv1-imagenet --pretrained_weights $CKPT

python3 -m test --test True --datasets distil-test-midjourney-celebahq --pretrained_weights $CKPT 
python3 -m test --test True --datasets distil-test-dalle2-celebahq --pretrained_weights $CKPT 
python3 -m test --test True --datasets distil-test-if-celebahq --pretrained_weights $CKPT 
python3 -m test --test True --datasets distil-test-sdv2-celebahq --pretrained_weights $CKPT 






