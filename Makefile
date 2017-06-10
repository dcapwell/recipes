INPUT_DIR=src
OUTPUT_DIR=docs

all: build

clean:
	rm -rf $(OUTPUT_DIR) || true

build: clean
	gitbook build $(INPUT_DIR) $(OUTPUT_DIR)

publish: build
	git checkout gh-pages
	cp -r docs/* .
	rm -rf docs/
	git add .
	git commit -a -m "Updated docs"
	git push origin gh-pages
	git checkout master

serve:
	gitbook serve $(INPUT_DIR)/ $(OUTPUT_DIR)
