python main.py 
    --MODEL_DIR /path/to/project/root/models \
    --DATA_DIR /path/to/project/root/data \
    --MIMIC_3_DIR /path/to/project/root/data/mimic3 \
    --data_path /path/to/project/root/data/mimic3/train_full.csv \
    --embed_file /path/to/project/root/data/mimic3/processed_full_100.embed \
    --vocab /path/to/project/root/data/mimic3/vocab.csv \
    --Y full \
    --model MultiResCNN \
    --decoder RandomlyInitialized \
    --criterion prec_at_8 \
    --MAX_LENGTH 4096 \
    --batch_size 3  \
    --lr 5e-3 \
    --num_workers 8 \
