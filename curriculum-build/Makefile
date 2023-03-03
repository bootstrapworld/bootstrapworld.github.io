# last modified 2023-03-03

repo_dir := ~/src/curriculum

repo_mkdoc_dir := $(repo_dir)/lib/maker/doc

all: index.html phase1.svg phase2.svg asciidoctor.css makeitso-message.html README.html

index.html: $(repo_mkdoc_dir)/*.adoc $(repo_mkdoc_dir)/*.svg
	$(MAKE) -C $(repo_mkdoc_dir)
	cp -p $(repo_mkdoc_dir)/$@ .

%.svg: $(repo_mkdoc_dir)/%.svg
	cp -p $< .

%.css: $(repo_mkdoc_dir)/%.css
	cp -p $< .

makeitso-message.html: $(repo_mkdoc_dir)/build-makefile.adoc
	asciidoctor -a linkcss -a icons=font $< -o $@

README.html: $(repo_dir)/README.adoc
	asciidoctor -a linkcss -a icons=font $< -o $@
