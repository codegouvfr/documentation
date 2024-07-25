# Contribuer

## Quels fichiers modifier ?

Pour les corrections, vous pouvez modifier `index.org`.

Pour des suggestions d'ajouts, vous pouvez modifier `temp.org`.

## Tester l'export

Pour tester l'export, vous devez travailler sur une machine disposant de ces logiciels :

- emacs
- org-mode
- texinfo
- texlive-full

Une fois vos modifications faites, vous pouvez lancer l'export ainsi :

```
~$ cd documentation/
~$ emacs --script scripts/export.el
```

## Modalités techniques

Le développement de cette documentation a lieu sur [SourceHut](https://git.sr.ht/~codegouvfr/documentation).

Pour des commentaires privés, utilisez [contact@code.gouv.fr](mailto:contact@code.gouv.fr).

Pour les rapports de bogues, les correctifs, les demandes de fonctionnalités et les questions générales, envoyez un courriel à la liste de diffusion publique [~codegouvfr/dev@lists.sr.ht](mailto:~codegouvfr/dev@lists.sr.ht).

Pour envoyer un *patch* à la liste de diffusion, veuillez configurer
votre copie locale du dépôt comme suit :

`git config format.subjectPrefix "PATCH documentation"`

Nous n'acceptons que les patchs et les commits signés en utilisant le vrai nom du contributeur.

En signant leurs contributions, les contributeurs acceptent le [certificat d'origine du développeur](https://developercertificate.org).
