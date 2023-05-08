python main.py 
    --MODEL_DIR C:/Users/zli123/Desktop/Project/HiCu-ICD/models \
    --DATA_DIR C:/Users/zli123/Desktop/Project/HiCu-ICD/data \
    --MIMIC_3_DIR C:/Users/zli123/Desktop/Project/HiCu-ICD/mimic3 \
    --data_path C:/Users/zli123/Desktop/Project/HiCu-ICD/mimic3/train_full.csv \
    --embed_file C:/Users/zli123/Desktop/Project/HiCu-ICD/mimic3/processed_full_100.embed \
    --vocab C:/Users/zli123/Desktop/Project/HiCu-ICD/mimic3/vocab.csv \
    --Y full \
    --model MultiResCNN \
    --decoder HierarchicalHyperbolic \
    --criterion prec_at_8 \
    --MAX_LENGTH 4096 \
    --batch_size 8  \
    --lr 5e-5 \
    --depth 5 \
    --n_epochs '2,3,5,10,50'  \
    --num_workers 8 \
    --hyperbolic_dim 50 \
    --loss ASL \
    --asl_config "1,0,0.05"
