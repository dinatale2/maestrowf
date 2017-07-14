DOCS = docs
EGG = $(wildcard *.egg-info)

.PHONY:
	cleanall
	clean

all: clean release docs

release:
	python setup.py sdist bdist_wheel

docs:
	cd $(DOCS)
	make html

clean:
	rm -rf dist
	rm -rf build
