pdf:
	emacs --script scripts/export-texi.el
	texi2pdf index.texi

md:
	emacs --script scripts/export-md.el
	cp -r assets/ docs/
	mkdir docs/css
	cp dsfr/css/extra.css docs/css/extra.css
	mv index.md docs/index.md
	cp README.md docs/about.md
	touch mkdocs
	sed -i '1 i\# Documentation' docs/index.md # workaround for dsfr template
	sed -ri 's/^(#+)/\1#/' docs/about.md
	sed -i '1 i\# À propos' docs/about.md
	~/.local/bin/pipenv run mkdocs build -d public/

clean:
	rm -f *texi *log *aux *toc *pdf *info *ky *cp *fn *tp *pg *vr *cps
	rm -f index.md
	rm -f preambule.md
	rm -f utiliser.md
	rm -f publier.md
	rm -f contribuer.md
	rm -f faq.md
	rm -f glossaire.md
	rm -r public docs mkdocs
