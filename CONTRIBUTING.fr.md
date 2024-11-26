# Contribuer

## Quels fichiers modifier ?

Pour les corrections, vous pouvez modifier `index.org`.

Pour des suggestions d'ajouts, vous pouvez modifier `temp.org`.

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

Ensuite vous pouvez lancer les commandes suivantes pour soit construire le site web avec mkdocs, soit le pdf:

```
~$ make md
~$ make pdf
```

Ce script va générer les fichiers `.md` visuellement rendus par le script mkdocs contenu dans le `/public/index.html`.

Il va aussi générer un fichier `index.texi` puis l'exporter en pdf avec la commande `texi2pdf index.texi`.

Pour nettoyer les fichiers générés, vous pouvez lancer la commande `make clean`.

## Modalités techniques

Le développement de cette documentation a lieu sur [SourceHut](https://git.sr.ht/~codegouvfr/documentation).

Pour des commentaires privés, utilisez [contact@code.gouv.fr](mailto:contact@code.gouv.fr).

Pour les rapports de bogues, les correctifs, les demandes de fonctionnalités et les questions générales, envoyez un courriel à la liste de diffusion publique [~codegouvfr/dev@lists.sr.ht](mailto:~codegouvfr/dev@lists.sr.ht).

Pour envoyer un *patch* à la liste de diffusion, veuillez configurer votre copie locale du dépôt comme suit :

`git config format.subjectPrefix "PATCH documentation"`

Nous n'acceptons que les patchs et les commits signés en utilisant le vrai nom du contributeur.

En signant leurs contributions, les contributeurs acceptent le [certificat d'origine du développeur](https://developercertificate.org).

Si vous ne savez pas comment contribuer autrement qu'avec des *pull requests*, faites votre PR, ajoutez `.patch` à l'URL de la PR, téléchargez le patch qui s'affiche et envoyez-le en pièce jointe à la liste `~codegouvfr/dev@lists.sr.ht`.
