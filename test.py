import wandb
from utils.config import cfg
import os.path as osp
    
def main(run, cfg):
    from utils.trainer import Trainer
    from torch.utils.data import DataLoader
    from dataset import TMDistilDireDataset, TMDireDataset 
    if cfg.reproduce_dire:
        dataset = TMDireDataset(cfg.dataset_root)
    else:
        dataset= TMDistilDireDataset(cfg.dataset_root)
    dataloader = DataLoader(dataset, 
                            batch_size=1, 
                            shuffle=False, num_workers=2, drop_last=False)
    trainer = Trainer(cfg, dataloader, dataloader, run, 0, False, 1)
    assert len(cfg.pretrained_weights) != 0, "Give proper checkpoint path"
    trainer.load_networks(cfg.pretrained_weights)
    # print("="*50)
    # cnt = 0
    # for data, path in dataloader:
    #     out = trainer.predict(data)
    #     if trainer.label > 0.5 and out < 0.5:
    #         print(path)
    #         cnt+=1
    # print(cnt)
            
         
    trainer.validate(False, save=True, save_name=f"{cfg.root_dir}/{cfg.datasets_test}_{cfg.pretrained_weights.split('/')[-3]}_results.txt")

if __name__ == "__main__":
    main(None, cfg)
    