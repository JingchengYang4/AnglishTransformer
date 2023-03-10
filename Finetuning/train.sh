OUTPUT_DIR=models
TRAIN_FILE=dataset/train.txt
VALID_FILE=/dataset/valid.txt
python run_language_modeling.py \
--output_dir=$OUTPUT_DIR \
--model_type=gpt2 \
--model_name_or_path=gpt2 \
--do_train \
--train_data_file=$TRAIN_FILE \
--do_eval \
--eval_data_file=$VALID_FILE \
--per_device_train_batch_size=2 \
--per_device_eval_batch_size=2 \
--line_by_line \
--learning_rate 5e-5 \
--num_train_epochs=5
