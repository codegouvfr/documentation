Brouillon de questionnaire sur les forges ministérielles
=====

# Historique

- V0.1 envoyée au [groupe de travail ouverture des codes sources](https://man.sr.ht/~etalab/logiciels-libres/gtt-ll-amdac.md) le 30 septembre 2022.
- v0.2 publiée dans ce dépôt le 11 octobre 2022.

# Introduction

Le site [code.gouv.fr](https://code.gouv.fr) permet d'explorer les
dépôts de code source publiés par des organismes publics.

Il collecte les métadonnées de ces dépôts via les forges identifiées,
dont la liste est
[publiée](https://git.sr.ht/~etalab/codegouvfr-fetch-data/blob/master/platforms.csv),
bon nombre d'entre elles étant déployées dans la recherche et
l'enseignement supérieur.

Le but de ce questionnaire est de faire un état des lieux plus complet
sur les forges déployées dans les ministères et les établissements qui
en dépendent hors du MESR, qui mène son enquête propre via le collège
« logiciels et codes sources » du Comité pour la science ouverte.

# Questions

## URL de la forge

Champ texte libre: cette information permettra d’identifier la forge
de manière unique.

## Quel est le logiciel de forge utilisé ?

Un choix parmi :

- GitLab
- Gitea
- Tuleap
- Gogs
- SourceHut
- Autre (préciser lequel)

## Par qui est proposée cette forge ?

Champ texte libre: nom du service.

## Comment est déployée la forge ?

Un choix parmi :

- Sur des machines gérées par le service qui propose la forge
- Sur du cloud cercle 1
- Sur du cloud cercle 2
- Sur du cloud cercle 3
- Je ne sais pas

## Comment est infogérée la forge ?

Un choix parmi :

- Par des ETP ou % d'ETP dédiés au sein du service
- Via un ou des prestataires
- Via des ETP ou % d'ETP et un ou des prestataires

## Qui peut configurer la forge ?

Un choix parmi :

- Un administrateur au sein du service
- Un ou des prestataire(s)
- Une équipe avec un administrateur et un ou des prestataires
- Je ne sais pas

## Qui peut administrer la forge ?

Un choix parmi :

- Un administrateur au sein du service
- Un ou des prestataire(s)
- Une équipe avec un administrateur et un ou des prestataires
- Je ne sais pas

## Quelle est la vocation de cette forge ?

Un choix parmi :

- La collaboration interne sans ouverture des dépôts vers l'extérieur
- La publication vers l'extérieur du contenu des dépôts
- Un mixte entre collaboration interne et publication vers l'extérieur

## Comment s'identifie t'on sur cette forge ?

- Via un annuaire interne
- Sur invitation d'un membre existant
- Auto-inscription libre (création de compte sans validation)
- Auto-inscription limitée (création de compte avec validation)

## Quels sont les services disponibles via la forge ?

- Possibilité de faire des pull ou merge requests
- Intégration continue native (par ex. GitLab Runner ou GitHub Actions)
- Intégration continue via d'autres "runners"
- Déploiement continu
- Publication de sites statiques (à la “Gitlab pages”)
- Gestionnaire d’artefacts
- Gestionnaire d’images docker
- Assurance qualité (par exemple SonarQube)
- Autre (préciser)

## Comment sont organisés les projets ?

Champ libre.

Le but de ce champ est de savoir s'il y a des directions qui sont
données aux utilisateurs pour la gestion des groupes (un groupe par
projet ? un groupe par service / département ?) mais nous laissons
ce champ libre car les détails sont intéressants.

## Si vous hébergez votre forge, quelle politique de maintenance ?

Champ libre.

Le but de ce champ est de savoir comment vous gérez les montées de
version pour une forge que vous hébergez.

## Commentaire libre

Pour remonter d'autres informations.
