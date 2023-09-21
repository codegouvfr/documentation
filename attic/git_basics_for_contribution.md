---
tags: bsoc, formation, guide
---
Les bases de la contribution avec git
===

> Comment contribuer correctement à un logiciel libre en utilisant git ?
> 
_OU Comment contribuer from scratch ?_

[TOC]

## Introduction

_TODO Expliquer pourquoi git et pas un autre VCS (décentralisé, etc.) ?_

> Où en êtes-vous avec git (et sur votre projet) ?

:::info
QUIZZ
```bash=
echo "Hello World!" > file.txt
git add file.txt
echo "Goodbye World!" > file.txt
git commit -m "Say something"
```
Que contient ce commit ?
1. Un fichier `file.txt` contenant "Hello World!"
2. Un fichier `file.txt` contenant "Goodbye World!"
:::

:::warning
Il y a trois états possibles pour un fichier dans git : **modifié** (_modified_), **indexé** (_staged_), **validé** (_commited_).
:::

_TODO vocabulaire (dépôt, instantané, etc.) ?_

## Les commandes de base de git

Ces commandes permettent de contribuer avec git localement (sur sa machine) à un projet déjà existant.

- Obtenir une copie locale du dépôt (_repository_) distant d'un projet :
`git clone <url>`
- Enregistrer ses modifications dans le dépôt :
    - Vérifier l'état des fichiers :
    `git status`
    - Remplacer un fichier par sa dernière version validée (la version du dernier _commit_) :
    `git restore <file-or-directory>` :warning: Supprime les modifications locales du fichier
    - Comparer le contenu de son espace de travail (_working directory_) avec la zone d’index (_staging area_) :
    `git diff`
    - Indexer les fichiers modifiés ou de nouveaux fichiers pour validation :
    `git add <file-or-directory>`, `git add --all`
        - Désindexer un fichier :
        `git restore --staged <file-or-directory>`
    - Comparer les fichiers indexés et le dernier instantané (_snapshot_) :
    `git diff --staged`
    - Valider (_commit_) les modifications :
    `git commit`, `git commit --all` (<=> `git add -A && git commit`)
- Visualiser l’historique des _commits_ :
`git log`

## Résumé (_déjà ?_)

```bash=
git help everyday
```

Mais aussi :
- Toujours connaître l'état dans lequel on est, et ce qu'on est en train de faire (abuser de `git status`)
- Bien lire les sorties des commandes
- _TODO etc._

## Les bases de git pour collaborer : les branches

Git ne stocke pas ses données comme une série de modifications ou de différences successives mais plutôt comme une série d’instantanés (*snapshots*) de l'espace de travail.

|![Stockage des données comme des instantanés du projet au cours du temps](https://git-scm.com/book/en/v2/images/snapshots.png)|
|:-:|
|Stockage des données comme des instantanés du projet au cours du temps|

Ces instantanés sont référencés par des **commits**.

Un **commit** est un pointeur vers un instantané (*snapshot*)  - ou, plus exactement, un objet qui contient un pointeur vers un arbre (*tree*), des métadonnées et un pointeur vers son parent (note : aucun pour le commit initial, plusieurs pour un commit de fusion)

|![Un commit et son arbre](https://git-scm.com/book/en/v2/images/commit-and-tree.png)|
|:-:|
|Un commit et son arbre|

|![Commits et leurs parents](https://git-scm.com/book/en/v2/images/commits-and-parents.png)|
|:-:|
|Commits et leurs parents|

Une **branche** est un pointeur vers un commit (le plus récent), qui avance automatiquement à chaque commit. `master` ou `main` est le nom de la branche par défaut. `HEAD` est un pointeur vers la branche courante.

:::info
Ces pointeurs sont stockés dans des fichiers dans `.git/ref/heads`.
:::

|![Une branche et l’historique de ses commits](https://git-scm.com/book/en/v2/images/branch-and-history.png)|
|:-:|
|Une branche et l’historique de ses commits|

### Utiliser les branches

- Créer une nouvelle branche :
`git branch <branch_name>`
- Basculer sur une branche (<=> déplacer `HEAD` + restaurer les fichiers de l'espace de travail dans l'état du dernier instantané de la branche) :
`git switch <branch_name>`
    - Basculer sur une nouvelle branche :
`git switch --create <branch_name>` (<=> `git branch <branch_name> && git switch <branch_name>`)

### Intégrer les modifications d'une branche dans une autre

Dans git, il y a deux façons d’intégrer les modifications d’une branche dans une autre : en fusionnant (_merge_) et en rebasant (_rebase_).

#### Fusion (_merge_)

Pour fusionner la branche `iss53` dans la branche `master` : `git switch master && git merge iss53`

|![La branche iss53 fusionnée dans la branche master](https://git-scm.com/book/en/v2/images/basic-merging-2.png)|
|:-:|
|La branche `iss53` fusionnée dans la branche `master`|

**Merge** réalise une fusion entre les deux derniers instantanés de chaque branche (C3 et C4) et l’ancêtre commun le plus récent (C2) en créant un commit résultant de cette fusion (_merge commit_).

:::info
Dans certains cas simples, git déplace simplement le pointeur de la branche (_fast-forward_). Ce peut être évité en utilisant l'option `--no-ff`.
|![Cas où une avance rapide est possible](https://git-scm.com/book/en/v2/images/basic-branching-3.png)|
|:-:|
|Cas où une avance rapide est possible|
:::

#### Rebasage (_rebase_)

**Rebase** rejoue les modifications d'une branche sur une autre.

Pour réappliquer sur `master` (C3) les _patches_ des modifications introduites sur la branche `experiment` (C4) : ```git switch experiment && git rebase master```

|![Rebasage d'experiment sur master](https://git-scm.com/book/en/v2/images/basic-rebase-3.png)|
|:-:|
|Rebasage d'`experiment` sur `master`|

**Rebase** crée de nouveaux commits : similaires en contenu mais différents en identité.

:::danger
**Ne pas rebaser des commits qui ont déjà été poussés sur un dépôt public** (avec une exception pour une branche personnelle en utilisant l'option `--force` lors du `push`).
Cette règle s'applique de manière générale pour toutes les opérations qui modifient les commits.
:::

#### Merge vs. rebase ?

- Rebaser pour un historique plus clair : branche devenue linéaire
_TODO argumentaire + intérêt d'un historique clair_

#### Résoudre les conflits avec sérénité

```bash=
git switch master && git merge iss53
```

- Identifier le(s) fichier(s) en conflit (_unmerged_) :
`git status`
- Modifier le(s) fichier(s) :
Exemple d'un fichier en conflit
```
<<<<<<< HEAD:index.html
<div id="footer">contact : email.support@github.com</div>
======
<div id="footer">
 please contact us at support@github.com
</div>
>>>>>>> iss53:index.html
```
Au-dessus de la ligne ``=======`` se trouve la version dans `master`(`HEAD`), en-dessous se trouve la version de la branche `iss53`. Pour résoudre le conflit, il faut choisir une partie ou l’autre ou bien fusionner les contenus (en effaçant les lignes `<<<<<<<`, `=======` et `>>>>>>>`).
- Marquer le(s) fichier(s) comme résolu(s) :
`git add <file>`
- Pour poursuivre en cas de merge : ```git commit```
- Pour poursuivre en cas de rebase : ```git rebase --continue```

#### Branches distantes

**Clone** crée un pointeur `master` sur une branche locale et un pointeur ```origin/master``` sur la branche `master` distante. `origin` est le nom par défaut pour un dépôt distant (_remote_).

- Récupérer les nouvelles modifications du dépôt distant :
`git fetch origin` (correspond à déplacer le pointeur `origin/master` et les pointeurs des éventuelles autres branches distantes)

|![Effets d'un git fetch](https://git-scm.com/book/en/v2/images/remote-branches-3.png)|
|:-:|
|Effets d'un `git fetch`|

- Appliquer ces nouvelles modifications dans son espace de travail, sur la branche `master` :
    - En fusionnant la branche distante `origin/merge` dans sa branche locale `master` :
`git merge origin/master`
    - En rebasant sa branche locale `master` sur la branche distante `origin/master` (à préférer pour un historique plus clair puisqu'évite des commits de fusion non significatifs) :
`git rebase origin/master`
- Pousser ses propres modifications sur le dépôt distant :
`git push origin master`

Les commandes restent les mêmes pour n'importe quelle autre branche et n'importe quel autre dépôt distant.

:::info
Il existe la commande `git pull` qui permet à la fois de récupérer les modifications et de les appliquer. L'utiliser avec l'option `--rebase` pour rebasage (<=> `git fetch origin && git rebase origin/master`).
:::

:::warning
Penser à nettoyer les branches mortes
:::

## Les bases de git pour contribuer : les workflows

_TODO expliquer workflow (dont nécessité)_

### Un workflow local simple (GitHub flow ?)

1. "Clean master": **Toutes les modifications doivent passer par des branches** basées sur `master` et dont le nom doit être descriptif : ex. `feature/<branch_name>`, `issue/<branch_name>`
2. "Continuous rebase" : Rebaser la branche sur `master` régulièrement pendant le développement pour éviter les conflits au moment du merge
3. Fusionner la branche dans `master` sans avance rapide (option `--no-ff`) ou en regroupant (_squash_) les commits en un seul avec l'option `--squash`

### Les workflows distribués

_TODO forges_
_TODO CONTRIBUTING (ou README)_

#### Integration-Manager Workflow

Il s'agit du workflows le plus commun sur les forges telles que GitHub et GitLab.

1. _Tout commence par une issue ?_
2. [Optionnel] Si le projet est en lecture seule, dupliquer le projet (_fork_)
3. `git clone`
4. Effectuer vos modifications de préférence en suivant [un workflow](#Un-workflow-local-simple), jusque...
5. `git push`
6. _Pull Request_/_Merge Request_
    - _Revue de code_

#### Autres

_TODO_
- Centralized Workflow
- Dictator and Lieutenants Workflow
- envoi de patchs par email

## Configurer git pour une collaboration réussie

- Si le dépôt distant est sur un serveur/une forge, configurer l'accès par SSH : [exemple pour GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

### Configuration globale

- `git config --global user.name "John Doe"`
- `git config --global user.email johndoe@example.com`
- Configurer le comportement de la commande `pull` (pour rebaser automatiquement :innocent:) :
`git config --global pull.rebase preserve` (preserve les commits de merge locaux) => `git pull` <=> `git pull --rebase`
- Configurer les caractères de fin de ligne (notamment dans le cas d'un collaboration entre développeurs Unix/Mac et Windows) :
    - Pour les développeurs Unix/Mac :
`git config --global core.autocrlf input`
    - Pour les développeurs Windows :
`git config --global core.autocrlf true`
- Configurer un template de message de commit (_[+ hook de validation]_) :
`git config --global commit.template ~/git-template/.gitmessage.txt`
Exemple de template de message de commit
```
ISSUE_NUMBER
# TEMPLATE:
# 1. 50-character subject line - Imperative mode (starts with a verb)
# 2. One blank line
# 3. Optional body - Answers What? and Why?
```

### Configuration du dépôt

- Exclure les fichiers du suivi dans un fichier `.gitignore`

### Configurer git pour une collaboration efficace : les aliases ?

```bash=
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
```

_TODO_

## Git avancé pour contribuer "proprement"

> Ou comment nettoyer son historique ?

:::info
Exercice :
1. Copier le projet https://github.com/hjonin/formation-git/
2. Basculer sur la branche `feature/todo`
3. Défaire les modifications du dernier commit de la branche (i.e. inverser le dernier commit)
4. Remplacer le message de commit (i.e. modifier le message du dernier commit) par : _"Silence is golden"_
5. Appliquer les patches des modifications introduites par l'avant-dernier commit (`6eaf39`) de la branche `feature/incomplete` (i.e. picorer l'avant-dernier commit de la branche `feature/incomplete`)
- Modifier le fichier README : répondre au sondage et à la question
6. Ne commit que la réponse au sondage (i.e. indexer partiellement le fichier puis commit) avec le message _"And my birth month"_
7. Fusionner les deux derniers commits (en ne gardant que le message de l'avant-dernier commit)
    - Git refuse : mettre d'abord vos modifications de côté (i.e. remiser votre espace de travail dans une pile dédiée)
8. Rebaser la branche sur `main`
- Résoudre le conflit
9. Ré-appliquer les modifications mises de côté
10. Encore un conflit... Nettoyer simplement l'espace de travail (:warning: supprime toutes les modifications en cours)
11. Créer l'étiquette `the.end`
12. _PR ?_
:::

:::success
Correction :
Résultat visible sur la branche[`feature/correction`](https://github.com/hjonin/formation-git/tree/feature/answer).
1. `git clone https://github.com/hjonin/formation-git/`
2. `git switch feature/cool`
3. `git revert HEAD`
4. `git commit --amend`
5. `git cherry-pick <commit_id>`
6. `git add --patch`, commande `s` (pour _split_) pour rafiner le découpage des modifications, puis `git commit`
7. `git stash && git rebase --interactive HEAD~2`, commande `s` (pour _squash_)
8. `git rebase main`
9. `git stash apply` ou `git stash pop` pour supprimer les modifications de la pile
10. `git reset --hard`
11. `git tag the.end`
:::

## Git bonus

_TODO_

- `git commit --fixup` puis `git rebase -i --autosquash`
- `git reflog`
- `git bisect` : use binary search to find the commit that introduced a bug
```bash=
git bisect start
git bisect bad # Current version is bad
git bisect good <commit>
# Then
git bisect good # or git bisect bad
# Finally
git bisect reset
```

## Ressources

- La doc officielle : https://git-scm.com/doc
- S'entraîner avec les branches (vintage) : https://learngitbranching.js.org/
- Guide sur les PR : https://docs.github.com/en/pull-requests
- Guides sur la revue de code :
    - https://google.github.io/eng-practices/review/reviewer/
    - https://github.com/thoughtbot/guides/tree/main/code-review
- Exemples de `.gitignore` :
    - https://github.com/github/gitignore
    - https://www.toptal.com/developers/gitignore 

### Cheatsheets

- https://training.github.com/downloads/fr/github-git-cheat-sheet.pdf
- http://ndpsoftware.com/git-cheatsheet.html
- [https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet]
- [https://about.gitlab.com/images/press/git-cheat-sheet.pdf]
- https://git-scm.com/docs/giteveryday

### Commencer à contribuer

_TODO_

- https://github.com/firstcontributions/first-contributions
- https://firstcontributions.github.io/#project-list
- https://github.com/showcases/great-for-new-contributors
- https://opensource.guide/how-to-contribute/#finding-a-project-to-contribute-to
- good first issues :  ```github.com/<owner>/<repository>/contribute```
- https://github.com/mungell/awesome-for-beginners
- https://up-for-grabs.net/#/
