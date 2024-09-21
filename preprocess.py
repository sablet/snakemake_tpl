import argparse

def preprocess(input_file, output_file, param):
    print(f"Preprocessing {input_file} with {param}")
    # ここで実際の前処理を実装
    with open(output_file, "w") as f:
        f.write("Preprocessed data")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--input', required=True)
    parser.add_argument('--output', required=True)
    parser.add_argument('--param', required=True)
    args = parser.parse_args()
    preprocess(args.input, args.output, args.param)