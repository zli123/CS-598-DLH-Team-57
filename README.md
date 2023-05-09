# Course Project of Team 57, CS 598 DLH

# Replicability Study for MLHC 2022 paper HiCu: Leveraging Hierarchy for Curriculum Learning in Automated ICD Coding
This repo contains code for our MLHC 2022 paper:
</br>
Weiming Ren, Ruijing Zeng, Tongzi Wu, Tianshu Zhu, Rahul G. Krishnan: [HiCu: Leveraging Hierarchy for Curriculum Learning in Automated ICD Coding](https://arxiv.org/abs/2208.02301), 2022;

Our own juypternotebook version of the code is included here which was fed into Google Colab. main.py, util.models, ultil.losses and util.losses have small modifications made to them. Our submission of the descriptive notebook has also been included in this repo.

# Sections below have been borrowed from the original repository: [HiCu](https://github.com/wren93/HiCu-ICD)

Setup
-----
Install the following packages to run the code in this repository:
* gensim==4.1.2
* nltk==3.5
* numpy==1.18.1
* pandas==1.0.0
* scikit_learn==1.1.1
* scipy==1.4.1
* torch==1.7.1
* tqdm==4.62.3
* transformers==4.5.1

Data Preprocessing
-----
We use MIMIC-III for model training and evaluation. We use the same data preprocessing code as [MultiResCNN](https://github.com/foxlf823/Multi-Filter-Residual-Convolutional-Neural-Network). To set up the dataset, place the MIMIC-III files into `/data` as shown below:
```
data
|   D_ICD_DIAGNOSES.csv
|   D_ICD_PROCEDURES.csv
└───mimic3/
|   |   NOTEEVENTS.csv
|   |   DIAGNOSES_ICD.csv
|   |   PROCEDURES_ICD.csv
|   |   train_full_hadm_ids.csv
|   |   train_50_hadm_ids.csv
|   |   dev_full_hadm_ids.csv
|   |   dev_50_hadm_ids.csv
|   |   test_full_hadm_ids.csv
|   |   test_50_hadm_ids.csv
```
The `*_hadm_ids.csv` files can be found [here](https://github.com/jamesmullenbach/caml-mimic/tree/master/mimicdata/mimic3).

After setting up the files, run the following command to preprocess the data:
```sh
python preprocess_mimic3.py
```

Training and Evaluation
-----
1. See files under `/runs` for training configs for MultiResCNN without HiCu applied, with HiCu applied and with HiCu and Hyperbolic Embeddings applied.

Acknowledgement
-----
A large portion of the code in this repository is borrowed from [foxlf823/Multi-Filter-Residual-Convolutional-Neural-Network
](https://github.com/foxlf823/Multi-Filter-Residual-Convolutional-Neural-Network). Thanks to their great work.
