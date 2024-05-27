
for CKPT in "/workspace/DistilDIRE/experiments/truemedia-distil-dire-celebahq-lr1e-3-kdw1/ckpt/model_epoch_6.pth" "/workspace/DistilDIRE/experiments/truemedia-distil-dire-imagenet-lr1e-4/ckpt/model_epoch_10.pth" 
do
    python3 -m test --test True --datasets truemedia-distil-prev --pretrained_weights $CKPT 
done

for CKPT in "/workspace/DistilDIRE/experiments/dire_reprod-imagenet-lr1e-3/ckpt/model_epoch_5.pth" "/workspace/DistilDIRE/experiments/dire_reprod-celebahq-lr1e-3/ckpt/model_epoch_2.pth"
do
    python3 -m test --test True --datasets truemedia-distil-prev --pretrained_weights $CKPT --reproduce_dire True
done

# CKPT=