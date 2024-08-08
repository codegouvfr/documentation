env:
	~/.local/bin/pipenv install
	~/.local/bin/pipenv install --index gitlab mkdocs-dsfr
	npm install

pdf:
	emacs --script scripts/export-texi.el
	texi2pdf index.texi

md:
	emacs --script scripts/export-md.el
	cp -r assets/ docs/
	mkdir docs/css
	cp assets/dsfr/css/extra.css docs/css/extra.css
	mv index.md docs/index.md
	cp about.md docs/about.md
	touch mkdocs
	sed -i '1 i\# Documentation' docs/index.md # workaround for dsfr template
	sed -ri 's/^(#+)/\1#/' docs/about.md
	sed -i '1 i\# À propos' docs/about.md
	~/.local/bin/pipenv run npm run build:prod # which runs mkdocs build + copy dsfr

clean:
	rm -rf *texi *log *aux *toc *pdf *info *ky *cp *fn *tp *pg *vr *cps
	rm -f index.md
	rm -f preambule.md
	rm -f utiliser.md
	rm -f publier.md
	rm -f contribuer.md
	rm -f faq.md
	rm -f glossaire.md
	rm -rf public docs mkdocs
	touch index.org

clean-env:
	~/.local/bin/pipenv --rm
	rm -rf node_modules/
