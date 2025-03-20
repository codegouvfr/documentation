env:
	~/.local/bin/pipenv install

pdf:
	emacs --script scripts/export-texi.el
	texi2pdf index.texi

txt:
	emacs --script scripts/export-txt.el

mkdocs:
	emacs --script scripts/export-md.el
	mkdir -p docs/assets
	cp -r assets docs
	mv index.md docs/index.md
	cp about.md docs/about.md
	touch mkdocs
	sed -i '1 i\# Documentation' docs/index.md # workaround for dsfr template
	sed -ri 's/^(#+)/\1#/' docs/about.md
	sed -i '1 i\# À propos' docs/about.md
	~/.local/bin/pipenv run mkdocs build --verbose -d public/

clean:
	rm -rf *texi *log *aux *toc *pdf *info *ky *cp *fn *tp *pg *vr *cps *txt
	rm -rf public docs mkdocs
	touch index.org

clean-env:
	~/.local/bin/pipenv --rm
	rm -rf node_modules/
