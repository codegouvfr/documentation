# Guide de contribution OpenSource

# Introduction

Ce guide a pour objectif d'expliciter et de détailler les bonnes pratiques pour la contribution en Open Source. Celle-ci peut être de différentes natures :

- **Documentation projet** : ajouter de la documentation au projet en lui-même
- **Tests sans code** : tester le logiciel, signaler des bugs, fournir des retours d'expérience sur l'utilisation du produit
- **Contribution au design** : création d'interfaces utilisateur attrayantes et intuitives, création de logos et visuels
- **Traduction** : de la documentation ou de l'interface utilisateur pour élargir l'audience du projet
- **Marketing et promotion** : écriture d'articles de blog, réseaux sociaux…
- **Partage de bonnes pratiques** : valoriser les compétences de l'organisation, potentiellement à l'international
- **Gestion de la communauté** : modération de forums, organisation de discussions ou réponse aux questions utilisateurs
- **Financement** : financement participatif, recherche de sponsors…

Vous souhaitez faire valider votre demande de contribution en Open Source à titre professionnel ?

Vous faites face à de nouvelles clauses (DCO, CLA...) encadrant la contribution à un projet ?

Vous vous demandez quelles sont les directives encadrant la contribution ?

Vous souhaitez améliorer ou valoriser vos contributions ?

Ou tout simplement, vous souhaitez en apprendre plus sur le cadre de la contribution à des projets Open Source ?

**Vous êtes au bon endroit !**

---

## Pour contribuer à titre professionnel, nous vous recommandons les bonnes pratiques suivantes:

- **Ne pas utiliser d'adresses mails électroniques génériques ou anonymes.**  
  L'utilisation d'une adresse professionnelle nominative permet d'assurer la traçabilité des contributions, de faciliter les échanges avec les mainteneurs du projet, et de valoriser l'engagement de votre organisation. Les adresses génériques (ex: `noreply@`, `admin@`, `contact@`) ou anonymes nuisent à la transparence et peuvent poser des problèmes juridiques en cas de litige sur les droits d'auteur ou les licences.

- **Si vous contribuez dans le cadre de votre activité professionnelle, nous recommandons que les commits ne soient pas faits depuis votre compte personnel.**  
  Dans ce cas, votre contribution devra être alignée avec les valeurs de votre administration. Utiliser un compte et une adresse email professionnels permet de clarifier que la contribution est effectuée au nom de l'organisation, ce qui sécurise les aspects juridiques (droits d'auteur, propriété intellectuelle) et renforce la légitimité institutionnelle de la démarche.

- **Vérifiez la pertinence du projet auquel vous souhaitez contribuer.**  
  Assurez-vous que le projet correspond aux besoins métiers, aux valeurs et à la stratégie open source de votre organisation. Une contribution pertinente maximise l'impact de votre investissement en temps et renforce la crédibilité de votre structure au sein de l'écosystème open source.

---

# I - Cadrer sa contribution

### Validation interne du choix de contribuer

Nous vous recommandons d'établir un processus de validation interne pour la contribution. Celui-ci peut inclure l'évaluation de critères tels que :

- La pull request alimente une fonctionnalité assez importante ou répond à un besoin utilisateur, permettant de justifier du temps investi lors des heures de travail.
- La pull request fait rayonner votre entreprise ou a minima avoir un impact positif sur celle-ci.
- Elle permet d'éviter une dette technique trop importante entre le projet principal et le fork réalisé.

À noter que chaque pull request ne doit solutionner qu'un problème à la fois (1 pull request = 1 problème).

---

### Vérification de la pertinence du projet

Nous vous recommandons de vérifier les points suivants :

- Le projet représente une plus-value pour votre activité (gain de temps, besoin usagers, rayonnement, diminution de la dette technique…).
- Le coût estimé de la contribution est limité, ou a minima en accord avec le gain estimé.
- La contribution est faite à un projet qui a une équipe active / une bonne réactivité.

Pour cela, testez l'activité du projet en envoyant un message à l'équipe projet ou en vérifiant si le projet a des commits récents !

- L'issue identifiée n'a pas déjà été discutée (vérifier les forums, l'espace issue de GitHub)
- Le projet a été comparé à d'autres projets Open Source et représente une meilleure option à laquelle contribuer.

---

# II - Préparer sa contribution

- Vérifiez le `CONTRIBUTING.md`
- Dupliquez le projet : créez un fork du projet sur votre compte et clonez ce fork sur votre machine locale.
- Selon le `CONTRIBUTING.md` ou les pratiques existantes :
  - Créez une nouvelle branche pour votre contribution (ex: `feature/nouvelle-fonctionnalité`).
  - Ou forkez le projet.
- Faites les modifications nécessaires et testez-les localement.
- Vérifiez la sécurité de votre produit (avec une attention particulière aux points détaillés dans la partie « III- Sécuriser sa contribution » de ce guide).

---

### Vérifiez la conformité

- Vérifiez la licence du produit auquel vous voulez contribuer.
- Votre contribution doit être faite sous la même licence ou une licence compatible a minima.
- Lisez la documentation du projet et suivez la procédure de contribution communiquée par l'équipe projet (`README.md` et `CONTRIBUTING.md`).
- Assurez-vous que votre contribution passe tous les tests demandés par le mainteneur.

---

### Vérifiez la qualité

- Faites plusieurs audits de code par vos pairs pour s'assurer que le code est conforme aux standards de qualité établis, qu'il ne contient rien d'inapproprié ou de sensible.
- Optionnel : s'il vous est demandé de signer un CLA (Contributor Licence Agreement) suivez les indications ci-dessous.

---

### Processus de signature d'un CLA

Un CLA est un accord légal entre un contributeur et un projet Open Source qui définit les conditions de contribution au projet.

En signant un CLA, le développeur transfère au projet des droits qui vont au-delà du cadre prévu par la licence Open Source du projet.

Cette démarche nécessite donc une procédure d'approbation particulière.

**Si nécessaire, processus de signature d'un CLA — À signer une fois par projet et par contributeur :**

1. Information à transmettre à l'OSPO
2. Avis des équipes juridiques (pour lever les risques liés au CLA)
3. Accord du responsable opérationnel

Ce n'est qu'une fois l'ensemble de ces validations obtenues que vous pouvez signer le CLA.

Pour plus de détails, veuillez consulter : [https://code.gouv.fr/documentation/#contribuer-a-un-logiciel-libre](https://code.gouv.fr/documentation/#contribuer-a-un-logiciel-libre)

---

### Compatibilité des licences

- De préférence, la licence de votre contribution doit être la même que celle du projet.
- Si ce n'est pas possible, les licences permissives sont généralement faciles à intégrer.
- À noter que le projet peut avoir des directives spécifiques sur la licence à utiliser dans votre contribution.

---

# III - Sécuriser sa contribution

Il est rappelé que la contribution en Open Source expose à un niveau de sécurité.

Dans ce cadre, il est impératif de relire vos lignes de code avant de faire une pull request.

Si la criticité du projet le suggère, il vous est demandé de compléter cette étape par des vérifications plus approfondies ; ceci afin de garantir une absence de faille de sécurité.

### Bonnes pratiques de développement

- Éliminer tous les messages de debug et toute information inutile pour le projet dans les messages d'erreur lors du pull request.
- Éliminer tout le code mort car il pourrait prêter à confusion et/ou laisser penser qu'il est toujours fonctionnel et testé ; ce code, non maintenu, pourrait être réintégré à tort par un développeur.
- Aucun élément sensible (tel qu'un mot de passe ou une clé cryptographique) ne doit être stocké dans le code ou dans les commentaires ; avoir recours à des fichiers de configuration qui ne sont pas versionnés.

---

### Sécurisation des métadonnées lors d'un commit

Lors d'un commit, il est important de spécifier clairement votre `user.name` et `user.email` dans votre git config globale.

Si vous ne respectez pas cette étape, les informations du poste par défaut seront mises automatiquement dans les métadonnées du commit ; et cela même si vous renseignez votre username et token d'authentification lié à votre projet lors du commit. Cela constitue un risque de sécurité important.

Toute métadonnée d'un commit est difficilement modifiable dans l'historique par la suite, une fois poussée sur GitHub, et impossible à modifier pour des PRs qui sont fermées.

---

# IV - Soumettre la contribution

1. Faites un commit avec un message clair et concis expliquant les changements apportés ainsi que le point de blocage auxquels ceux-ci répondent.
2. Poussez votre branche modifiée vers votre fork.
3. Créez une Pull Request (PR) vers le dépôt d'origine.
4. Suivez l'état de votre PR. Soyez prêts à recevoir des commentaires et à apporter des modifications si nécessaire.

---

### Anticipez la charge

Le dépôt de votre PR peut prendre plus de temps que prévu :

- Potentiel besoin de tester sur un worker GitHub (hors environnement habituel de tests)
- Potentiels aller-retours avec la communauté pour peaufiner la PR

---

### Et si ma contribution n'est pas acceptée ?

- Vérifiez les commentaires : consultez les retours que vous avez reçus sur votre PR.
- Apportez des modifications si nécessaire.
- Demandez des clarifications si les commentaires ne sont pas clairs.
- Recherchez des projets similaires : si votre contribution n'est pas acceptée et que vous ne parvenez pas à obtenir de retour, envisagez de soumettre votre travail à un autre projet open source.

---
