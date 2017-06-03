INPUT_DIR=src
OUTPUT_DIR=output

all: build

clean:
	rm -rf $(OUTPUT_DIR) || true

build: clean
	gitbook build $(INPUT_DIR) $(OUTPUT_DIR)

serve:
	gitbook serve $(INPUT_DIR)/ $(OUTPUT_DIR)
