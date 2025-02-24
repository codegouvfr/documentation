
[![img](https://img.shields.io/badge/code.gouv.fr-contributif-blue.svg)](https://code.gouv.fr/documentation/#quels-degres-douverture-pour-les-codes-sources)

# Présentation

Cette documentation est proposée par la [mission logiciels libres de la DINUM](https://code.gouv.fr) [en ligne](https://code.gouv.fr/documentation/) et [en PDF](https://code.gouv.fr/documentation/logiciels-libres-et-administration-publique.pdf).

Pour tout commentaire ou suggestion, veuillez nous [contacter](https://code.gouv.fr/fr/contact/).

# Publier

Installer `pipenv` et `mkdocs`:

```
pipx install pipenv
pipx install mkdocs
```

Publier la documentation:

```
cd documentation/
make env
# Move the index.md stub
mv index.md _index.md
make mkdocs
```

Pour publier aussi en version `pdf` et `txt`:

```
make pdf
make txt
```

# Contribuer

Vos contributions sont les bienvenues !  Voir ces [instructions](https://github.com/codegouvfr/documentation/blob/main/CONTRIBUTING.fr.md).

# Licence

2022-2025 Mission logiciels libres, DINUM.

Le contenu textuel disponible en ligne sur [code.gouv.fr](https://code.gouv.fr) sous le nom de [Documentation](https://code.gouv.fr/documentation/) est en partie adapté du « [Guide pratique d'usage des logiciels libres dans les administrations](https://adullact.org/IMG/pdf/GuideLLadministrations-V1.2.0.pdf) » par Thierry Aimé (DGI – ministère du budget, des comptes publics et de la fonction publique) et d’autres participants, utilisé sous licence [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/deed.fr). Cette [Documentation](https://code.gouv.fr/documentation) est publiée sous licence [CC-BY-SA-4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.fr). Le code de ce dépôt est sous licence [GPL-3.0-or-later](https://github.com/codegouvfr/documentation/blob/main/LICENSES/GPL-3.0-or-later.txt).
