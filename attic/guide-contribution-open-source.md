# Introduction

Ce guide a pour objectif d’expliciter et de détailler les bonnes pratiques de contribution en Open Source.  
Celles-ci sont à destination de tout collaborateur voulant contribuer à des projets externes reversés en Open Source.

Vous souhaitez faire valider votre demande de contribution en Open Source à titre professionnel ?  
Vous faites face à de nouvelles clauses (DCO, CLA...) encadrant la contribution à un projet ?  
Vous vous demandez quelles sont les directives encadrant la contribution ?  
Vous souhaitez améliorer ou valoriser vos contributions ?  
Ou tout simplement, vous souhaitez en apprendre plus sur le cadre de la contribution à des projets Open Source ?  
**Vous êtes au bon endroit !**

---

## Pour contribuer à titre professionnel, veuillez respecter les directives suivantes:

- Ne pas utiliser d’adresses électroniques génériques ou anonymes.  
  L'utilisation de votre adresse mail professionnelle est possible tout comme de votre adresse mail personnelle tant que votre adresse mail primaire est sécurisée.
- Votre contribution doit être alignée avec les valeurs de votre entreprise.
- Les commit ne doivent pas être faits depuis votre compte personnel.

---

# I - Cadrer sa contribution

### PRÉREQUIS : validation interne du choix de contribuer

1. Présentez à votre responsable produit (ou Tech Lead ou PM) les caractéristiques de votre contribution.
2. Validation/invalidation par le responsable de la contribution ainsi que de son périmètre.

Une fois ces 4 étapes passées, il sera temps de préparer votre contribution.

---

### Critères de validation

Les critères à prendre en compte par le responsable de l'équipe produit (ou Tech Lead ou PM) sont :

- La pull request doit alimenter une fonctionnalité assez importante ou répondre à un besoin utilisateur pour justifier d’investir du temps dessus lors des heures de travail.
- La pull request doit faire rayonner votre entreprise ou a minima avoir un impact positif sur celle-ci.
- Éviter une dette technique trop importante entre le projet principal et le fork réalisé.
- Chaque pull request ne doit solutionner qu'un problème à la fois (1 pull request = 1 problème).
- Vérifier que le besoin n'a pas déjà été répondu dans la section Issues.

---

### Quelles sont les caractéristiques principales à présenter ?

- Type de contribution
- Intérêt potentiel pour l'entreprise
- Problématique à résoudre
- Niveau d’exigence et temps demandé
- Risques liés (mainteneur non-réactif, charge, sécurité…)
- Licence (la licence doit bien être Open Source — vous pouvez vérifier ses caractéristiques dans la liste officielle SPDX[](https://spdx.org/licenses))

---

### Vérifiez l'opportunité

- Ouvrez une issue pour discuter avec la communauté et orienter la contribution (code, bug bounty, amélioration de fonctionnalités…).
- Vérifiez si le besoin a déjà été exprimé dans la section Issues de la communauté.
- Évaluez la plus-value pour votre entreprise (gain de temps, besoin usagers, rayonnement, diminution de la dette technique…).
- Ne prévoyez pas plusieurs modifications au sein d'une même contribution. 1 problème = 1 Pull Request !

---

### Vérifiez la pertinence du projet auquel vous souhaitez contribuer

- Le projet doit représenter une plus-value pour votre activité (gain de temps, besoin usagers, rayonnement, diminution de la dette technique…).
- Le coût estimé de la contribution doit être limité, ou a minima en accord avec le gain estimé.
- La contribution doit être faite à un projet qui a une équipe active / une bonne réactivité.  
  Pour cela, testez l'activité du projet en envoyant un message à l'équipe projet ou en vérifiant si le projet a des commits récents !
- Le projet doit avoir été comparé à d’autres projets Open Source et représenter une meilleure option à laquelle contribuer.

---

# II - Préparer sa contribution

- Vérifiez le `CONTRIBUTING.md`
- Dupliquez le projet : créez un fork du projet sur votre compte et clonez ce fork sur votre machine locale.
- Selon le `CONTRIBUTING.md` ou les pratiques existantes :
  - Créez une nouvelle branche pour votre contribution (ex: `feature/nouvelle-fonctionnalité`).
  - Ou forkez le projet.
- Faites les modifications nécessaires et testez-les localement.
- Vérifiez la sécurité de votre produit (avec une attention particulière aux points détaillés dans la partie « Sécurité et traçabilité » de ce guide).

---

### Vérifiez la conformité

- Vérifiez la licence du produit auquel vous voulez contribuer.  
  Votre contribution doit être faite sous la même licence ou une licence compatible a minima.
- Lisez la documentation projet et suivez la procédure de contribution communiquée par l’équipe projet.
- Assurez-vous que votre contribution passe tous les tests demandés par le mainteneur et indiqués dans le fichier `Contrib.MD`.

---

### Vérifiez la qualité

- Faites plusieurs audits de code par vos pairs pour s’assurer que le code est conforme aux standards de qualité établis, qu’il ne contient rien d’inapproprié ou de sensible.
- Optionnel : s'il vous est demandé de signer un CLA (Contributor Licence Agreement) suivez les indications ci-dessous.

---

Il est rappelé que la contribution en Open Source expose à un niveau de sécurité.  
Dans ce cadre, il est impératif de relire vos lignes de code avant de faire un pull request.  
Si la criticité du projet le suggère, il vous est demandé de compléter cette étape par des vérifications plus approfondies ; ceci afin de garantir une absence de faille de sécurité.

---

### Processus de signature d'un CLA

Un CLA est un accord légal entre un contributeur et un projet Open Source qui définit les conditions de contribution au projet.  
En signant un CLA, le développeur transfère au projet des droits qui vont au-delà du cadre prévu par la licence Open Source du projet.  
Cette démarche nécessite donc une procédure d'approbation particulière.

**Processus de signature d'un CLA — À signer une fois par projet et par contributeur :**

1. Information à transmettre à l'OSPO
2. Avis des équipes juridiques (pour lever les risques liés au CLA)
3. Accord du responsable opérationnel

Ce n’est qu’une fois l’ensemble de ces validations obtenues que vous pouvez signer le CLA.

---

### Compatibilité des licences

- De préférence, la licence de votre contribution doit être la même que celle du projet.
- Si ce n'est pas possible, les licences permissives sont généralement faciles à intégrer.
- À noter que le projet peut avoir des directives spécifiques sur la licence à utiliser dans votre contribution.

---

# Sécuriser sa contribution

### Bonnes pratiques de développement

- Éliminer tous les messages de debug et toute information inutile pour le projet dans les messages d’erreur lors du pull request.
- Éliminer tout le code mort car il pourrait prêter à confusion et/ou laisser penser qu’il est toujours fonctionnel et testé ; ce code, non maintenu, pourrait être réintégré à tort par un développeur.
- Aucun élément sensible (tel qu’un mot de passe ou une clé cryptographique) ne doit être stocké dans le code ou dans les commentaires ; avoir recours à des fichiers de configuration qui ne sont pas versionnés.

---

### Sécurisation des métadonnées lors d'un commit

Lors d’un commit, il est important de spécifier clairement votre `user.name` et `user.email` dans votre git config globale.

Si vous ne respectez pas cette étape, les informations du poste par défaut seront mises automatiquement dans les métadonnées du commit ;  
et cela même si vous renseignez votre username et token d’authentification lié à votre projet lors du commit. Cela constitue un risque de sécurité important.

Toute métadonnée d'un commit est difficilement modifiable dans l'historique par la suite, une fois poussée sur GitHub, et impossible à modifier pour des PRs qui sont fermées.

---

# III - Soumettre la contribution

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

# Annexe : les différents types de contribution

### Échéance

Bien que la plupart des contributions se fassent en une fois, de nombreux projets cherchent des partenaires à moyen terme capables de dédier un ETP au projet et de participer à la gouvernance et la roadmap.  
Bien que ce type de contribution soit chronophage, il peut être intéressant à envisager pour avoir plus de marge de manœuvre sur un projet.

---

### Types de contribution

- **Documentation projet** : ajouter de la documentation au projet en lui-même
- **Tests sans code** : tester le logiciel, signaler des bugs, fournir des retours d'expérience sur l'utilisation du produit
- **Contribution au design** : création d’interfaces utilisateur attrayantes et intuitives, création de logos et visuels
- **Traduction** : de la documentation ou de l'interface utilisateur pour élargir l'audience du projet
- **Marketing et promotion** : écriture d’articles de blog, réseaux sociaux…
- **Partage de bonnes pratiques** : valoriser les compétences de l'organisation, potentiellement à l'international
- **Gestion de la communauté** : modération de forums, organisation de discussions ou réponse aux questions utilisateurs
- **Financement** : financement participatif, recherche de sponsors…

---

# Focus sur les mécanismes de financement

**Qui achète ?**

- Un ministère
- Un opérateur
- Une collectivité

**Quoi ?**

- Des services (support, formation, adaptation)
- Des corrections de bug
- Des développements de fonctionnalités

**À qui ?**

- À un éditeur open source
- À un intégrateur qui reverse ou non
- À un fournisseur de services cloud qui reverse ou non
- À la DINUM

**Comment ?**

- Via un don (GitHub Sponsor, Open Collective, don direct, etc.)
- Via un décret de transfert (d'un ministère à la DINUM)
- Via le marché beta.gouv.fr (pour le business development et le financement de développeurs travaillant sur un projet)
- Via les marchés de support interministériels
- Via un marché innovant
- Via un marché dédié
- Via une commande hors marché avec ou sans mise en concurrence
- Via un _fiscal sponsor_ (parrain fiscal) : une organisation à but non lucratif qui accepte de soutenir financièrement un projet Open Source en lui fournissant un statut fiscal. Cela permet au projet de recevoir des dons déductibles d'impôt.
- Via une association de loi 1901 qui permet de rentrer les contributions financières dans la comptabilité d'un établissement public. À noter que, de par les démarches administratives, une telle association prendrait surtout sens pour un regroupement de projets Open Source et non un projet unique.
