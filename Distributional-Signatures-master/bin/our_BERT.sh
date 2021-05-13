#BERT for huffpost and fewrel dataset using propsed method in paper
#dataset=huffpost
#data_path="data/huffpost.json"
#n_train_class=20
#n_val_class=5
#n_test_class=16

dataset=fewrel
data_path="data/fewrel.json"
n_train_class=65
n_val_class=5
n_test_class=10
if [ "$dataset" = "fewrel" ]; then
    python src/main.py \
        --cuda -1 \
        --way 5 \
        --shot 1 \
        --query 25 \
        --mode train \
        --embedding meta \
        --classifier r2d2 \
        --bert  \
        --pretrained_bert 'bert-base-uncased'\
        --catch_dir 
        --dataset=$dataset \
        --data_path=$data_path \
        --n_train_class=$n_train_class \
        --n_val_class=$n_val_class \
        --n_test_class=$n_test_class \
        --auxiliary pos \
        --meta_iwf \
        --meta_w_target
else
    python src/main.py \
        --cuda -1 \
        --way 5 \
        --shot 5 \
        --query 25 \
        --mode train \
        --embedding meta \
        --classifier r2d2 \
        --bert  \
        --pretrained_bert 'bert-base-uncased'\
        --dataset=$dataset \
        --data_path=$data_path \
        --n_train_class=$n_train_class \
        --n_val_class=$n_val_class \
        --n_test_class=$n_test_class \
        --meta_iwf \
        --meta_w_target
fi
