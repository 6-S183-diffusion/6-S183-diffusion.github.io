.PHONY: build

build:
	cd 2025 && bundle install
	cd 2025 && bundle exec jekyll build
	cd 2026 && bundle install
	cd 2026 && bundle exec jekyll build
	rm -rf build 
	mkdir -p build build/2025
	cp -r build/_site/* build/2025
	cp -r build/_site/* build/
