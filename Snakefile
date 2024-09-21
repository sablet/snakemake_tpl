import yaml
import glob
import os


configfile: "config/default_config.yaml"


# allルールの定義
rule exe_pipeline:
    input: config["model_output"]

# preprocessルールの定義
rule preprocess:
    input: config["input"]
    output: config["output"]
    shell:
        "python preprocess.py --input {input} --output {output} --param {config[param]}"

# trainルールの定義
rule train:
    input: config["output"]
    output: config["model_output"]
    shell:
        "python train.py --data {input} --model {output} --learning_rate {config[learning_rate]}"