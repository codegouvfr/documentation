# Contribuer

## Quels fichiers modifier ?

Pour les corrections, vous pouvez modifier le fichier `index.org`.

Pour des suggestions de nouveaux contenus, vous pouvez modifier le fichier `temp.org`.

## Tester l'export

Pour tester l'export, vous devez travailler sur une machine disposant de ces logiciels :

- emacs
- org-mode
- python3
- pip
- pipenv
- make
- texinfo
- texlive-full

Une fois vos modifications faites, rendez-vous dans le dossier du projet, puis lancez la commande suivante pour construire l’environnement de développement nécessaire pour le rendu html (le rendu pdf n’en a pas besoin) :

```
~$ cd documentation/
~$ make env
```
Pour nettoyer l’environnement de développement :

```
~$ make clean-env
```

Ensuite vous pouvez lancer les commandes suivantes pour soit construire le site web avec mkdocs:

```
~$ make mkdocs
```

Ce script va générer les fichiers `.md` visuellement rendus par le script mkdocs contenu dans le `/public/index.html`.

```
~$ make pdf
```

Ce script va générer un fichier `index.texi` puis l'exporter en pdf avec la commande `texi2pdf index.texi`.

Pour nettoyer les fichiers générés, vous pouvez lancer la commande `make clean`.

## Modalités techniques

Le développement de cette documentation a lieu sur [ce dépôt](https://github.com/codegouvfr/documentation/).

Pour des commentaires privés, utilisez [floss@numerique.gouv.fr](mailto:floss@numerique.gouv.fr).

Nous n'acceptons que les commits signés en utilisant le vrai nom du contributeur.

En signant leurs contributions, les contributeurs acceptent le [certificat d'origine du développeur](https://developercertificate.org).
