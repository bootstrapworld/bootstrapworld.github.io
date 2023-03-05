# last modified 2023-03-05

all: index.html asciidoctor.css subdir

index.html asciidoctor.css: index.adoc
	asciidoctor -a linkcss $<

subdir:
	$(MAKE) -C curriculum-build
