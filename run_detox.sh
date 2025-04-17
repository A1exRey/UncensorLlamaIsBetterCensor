export CUDA_VISIBLE_DEVICES=0
export NVIDIA_VISIBLE_DEVICES=0

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

for lang in es hi ru uk zh #en am ar de es hi ru uk zh  #ru uk en de es am ar zh hi #am ar de en es hi ru uk zh
do
    python generate_detox.py --language $lang --model_path "mlabonne/Meta-Llama-3.1-8B-Instruct-abliterated" \
    --hf_token "" --nshot 10 --batch_size 8 \
    --output_path /Meta-Llama-3.1-8B-Instruct_abliterated_10shot_t08_p09_from_multilingual_toxicity_dataset_detoxpart_$lang.csv

    python generate_detox.py --language $lang --model_path "mlabonne/Meta-Llama-3.1-8B-Instruct-abliterated" \
    --hf_token "" --nshot 5 --batch_size 8 \
    --output_path /Meta-Llama-3.1-8B-Instruct_abliterated_5shot_t08_p09_from_multilingual_toxicity_dataset_detoxpart_$lang.csv

    python generate_detox.py --language $lang --model_path "mlabonne/Meta-Llama-3.1-8B-Instruct-abliterated" \
    --hf_token "" --nshot 0 --batch_size 8 \
    --output_path /Meta-Llama-3.1-8B-Instruct_abliterated_0shot_t08_p09_from_multilingual_toxicity_dataset_detoxpart_$lang.csv
