Outils permettant de contribuer aux explications données sur les algorithmes publics
=======

Etalab accompagne les administrateurs ministériels des données, *algorithmes* et codes sources sur la question des algorithmes publics via son pôle droits et société.  Cet accompagnement se fait aujourd'hui de deux façons: des ateliers en présentiel avec les AMDACs intéressés, de la [documentation en ligne](https://guides.etalab.gouv.fr/algorithmes/).

Le Lab IA et le pôle logiciels libres souhaitent contribuer à cet accompagnement en proposant des éléments de documentation technique.

Nous commencerions par **très modestement lister les outils existants** et leurs contributions actuelles à l'explication de calculs effectués par l'administration sur des bases juridiques (nous élargissons donc un peu la notion « d'algorithmes publics ».)

## OpenFisca

### Description courte

OpenFisca est le moteur libre et ouvert le plus largement utilisé au monde pour transformer la loi en code et calculer son application aussi bien sur des situations individuelles que sur les populations locale et nationale.

Développé en France depuis 2011, il est utilisé en production depuis 2014 par la DINUM, distingué par la [Commission européenne](https://joinup.ec.europa.eu/collection/sharing-and-reuse-it-solutions/sharing-reuse-awards-2019-results#oss-inno) en 2019 en par l’[OCDE](https://oecd-opsi.org/publications/cracking-the-code/) en 2020, et déployé sur [quatre continents](https://openfisca.org/fr/packages) en 2022.

### Description longue

OpenFisca est un ensemble d'outils logiciels en Python, le langage le plus utilisé pour les sciences de la donnée.

Son langage descriptif ([DSL](https://fr.wikipedia.org/wiki/Langage_dédié)) pour écrire les formules de calcul et leurs références législatives permet aux administrations de partager efficacement les mises à jour règlementaires et d’en mutualiser les coûts de maintenance en interconnectant les règles.

Son système de publication automatique des règles modélisées sur une [interface web](http://legislation.fr.openfisca.org) rend la loi explorable et offre une transparence algorithmique minimale immédiate à coût nul.

Son [API web REST](https://legislation.fr.openfisca.org/swagger) en JSON permet aux équipes de développement de livrer facilement des applications et des sites web qui effectuent des calculs de taxes, de cotisations et d'éligibilité.

Son [API Python](https://openfisca.org/doc/openfisca-python-api/index.html) vectorielle permet aux experts de la donnée d’effectuer des calculs à grande échelle et de les interconnecter avec leurs bases de données et bibliothèques habituelles. Les économistes peuvent s’appuyer sur ces modèles pour déterminer l'impact de toute réforme passée, future, ou hypothétique sur toute population.

Son [architecture](https://openfisca.org/doc/architecture.html) d’extensions et sa documentation riche permet de féderer des communautés nationales et locales d’agents publics, mais aussi de contributeurs associatifs et privés, qui collaborent pour modéliser la loi et la rendre exécutable.

Des [milliers de tests](https://github.com/openfisca/openfisca-france/tree/master/tests) sur des situations réelles contribuées par des administrations partenaires et des individus démontrent la robustesse du modèle français, y compris sur les zones grises qui sont spécifiées par des circulaires internes ou des pratiques spécifiques plutôt que par la loi.

### Usages actuels par des administrations publiques

#### En France

- En 2022, plus de 60 000 jeunes évaluent [chaque jour](https://mes-aides.1jeune1solution.beta.gouv.fr/stats) leurs droits à plus de 600 aides sur le simulateur [1 jeune 1 solution](https://mes-aides.1jeune1solution.beta.gouv.fr).
- Le [portail national des droits sociaux](https://mesdroitssociaux.gouv.fr) permet l’évaluation à près de 60 aides. Il est édité par la CNSA et les ministères sociaux et est basé sur OpenFisca depuis son lancement en 2017.
- L’outil [Estime](https://estime.pole-emploi.fr) de Pôle Emploi permet aux personnes en recherche d’emploi d’estimer rapidement l’évolution de leurs droits au chômage en cas de reprise d’emploi. Grâce à OpenFisca, le SI sous-jacent a pu être modernisé en quelques mois et le taux d’activation usager a en conséquence augmenté significativement.
- En 2021, [122 simulations](https://leximpact.an.fr/statistiques) ont été effectuées par des parlementaires grâce au simulateur LexImpact de l'Assemblée Nationale, basé sur OpenFisca, et plusieurs ont été utilisées lors des débats en séance.
- En 2019, plus de 1,6 million de ménages ont été informés de leurs droits et plus de 420 000 ont commencé une démarche de demande à une allocation [grâce au simulateur Mes Aides](https://blog.beta.gouv.fr/general/2019/11/18/mes-aides-metriques/), qui a vu le jour sur la base d’OpenFisca en 2014.
- Plusieurs collectivités locales utilisent OpenFisca pour faciliter l’accès à leurs prestations sociales : Paris, Rennes, Brest, Strasbourg…
- La [fiscalité minière](https://github.com/openfisca/openfisca-france-fiscalite-miniere/) est modélisée avec OpenFisca.
- Avec le soutien de l'ANCT, les dotations aux collectivités locales sont estimées par OpenFisca pour accélérer et faciliter la création de leur budget annuel.

#### Ailleurs en Europe

- La ville de Barcelone, en Espagne, utilise OpenFisca pour [calculer les aides sociales](https://ajuntament.barcelona.cat/lesmevesajudes/) de ses résidents.
- Le calculateur [PolicyEngine](https://policyengine.org/uk/policy) modélise la loi britannique.
- Les Pays-Bas et la Grèce expérimentent de 2023 à 2025 la modélisation avec OpenFisca pour la création d’assistants règlementaires.

#### En Océanie

- La Nouvelle-Zélande [utilise OpenFisca](https://serviceinnovationlab.github.io/projects/legislation-as-code/) pour informer les citoyens sur leur éligiblité à des dispositifs comme Rates Rebates ou [SmartStart](https://smartstart.services.govt.nz) et [documenter](https://nz.openfisca.org) ses règles de droit.
- L'Australie utilise OpenFisca pour calculer l’éligibilité à des dispositifs comme [Energy Saving Scheme](https://www.codeforaustralia.org/case-studies/dpie-rules-as-code) et à des activités professionnelles avec [Community Gaming Check](https://www.fairtrading.nsw.gov.au/community-gaming/community-gaming-regulation-check).
- La Polynésie Française a [modélisé](https://github.com/govpf/openfisca-pf) plusieurs taxes et impôts.

#### En Amérique du Nord

- OpenFisca est évalué [au Canada](https://github.com/potatowave/openfisca-canada) par le département Rules as Code du gouvernement fédéral.
- Le calculateur [PolicyEngine](https://policyengine.org/us/policy) consolide les règles fiscales de nombreux États américains.

#### En Afrique et Moyen-Orient

- La Tunisie, le Mali, la Côte d'Ivoire, le Sénégal, les Émirats Arabes Unis ont prototypé des calculs avec OpenFisca.

### Comment l'outil peut contribuer à éclairer des calculs de l'administration (outil de calcul direct, mise en ligne de simulateurs, etc.)

Le mode principal d'explication des calculs est la mise à disposition de simulateurs qui permettent aux usagers de comprendre expérimentalement le mode de calcul en faisant varier les entrées fournies.

Par ailleurs, le modèle étant fourni sous licence libre et les API documentées, des usagers ayant une capacité technique ou des personnes pouvant les assister peuvent construire des outils d'explication spécifiques, indépendamment des administrations. Cela a par exemple été le cas pour [les conséquences de la garde alternée sur les allocations familiales](https://pa-comp.firebaseapp.com/).

Enfin, chaque modèle et toutes ses références législatives sont directement explorables en ligne dans l'Explorateur de Législation (par exemple [le modèle français](https://legislation.fr.openfisca.org)), ce qui permet d’identifier les sources légales d’un calcul.

### Quelle documentation pertinente pour un agent public qui souhaite explorer l'outil dans le cadre de la mise en oeuvre d'explications autour d'un calcul de son administration?

- La [documentation officielle sur openfisca.org/doc](https://openfisca.org/doc), en anglais.
- Une prise de contact avec l'équipe cœur en écrivant à [contact@openfisca.org](mailto:contact@openfisca.org).
 
### Où est le code source et sous quelle licence

Le code source des outils OpenFisca est disponible sur l'organisation [@OpenFisca sur GitHub](https://github.com/openfisca). Tous les outils partagés sont sous licence AGPL. Le modèle français est également sous licence AGPL. Chaque modèle de pays peut avoir sa propre licence, mais la plupart sont sous licence AGPL.

### Qui développe l'outil (= qui a le contrôle sur les choix techniques)

La gouvernance d'OpenFisca est communautaire : toute entité peut suggérer ou directement contribuer des améliorations. Néanmoins, les modalités d'orientation et de validation finale varient selon les composants concernés : il faut distinguer les éléments cœur (moteur de calcul, API web, explorateur de législation…) des modèles de pays et des extensions.

- Une équipe cœur financée jusqu’à l’heure de rédaction principalement par des acteurs publics français encadre l’évolution des éléments partagés, principalement par l’édiction et l’application de règles de qualité (validation par des tests, revue par des pairs, interopérabilité des fonctionnalités, versionnement sémantique, publication automatique des paquets…). Elle investit également dans les évolutions techniques nécessaires pour la stabilité et la sécurité. Les fonctionnalités sont proposées et implémentées par les membres de la communauté selon leur besoins.
- Les modèles de pays sont soumis à une gouvernance décidée par le collectif qui l’édite. L’équipe cœur fournit un template qui incorpore les bonnes pratiques techniques et organisationnelles identifiées (tests automatisés, versionnement, publication…), mais chaque pays reste libre de son organisation. En France, l’évolution du modèle est garantie par près d’une dizaine d’administrations et organismes de recherche et repose sur un mélange de zones de responsabilité identifiées (par exemple, Pôle Emploi est l’entité la plus légitime pour modéliser les règles de l’assurance chômage) et de revues de code par des pairs pour garantir l’interopérabilité et la lisibilité.
- Les extensions sont également soumises à une gouvernance décidée par l’entité qui les a initiées. Le plus souvent, il s’agit de juridictions de petite taille (collectivité locale) ou de sujets de niche (réforme des retraites) qui impliquent un intérêt et des contributions limitées de la part d’une communauté large, et les évolutions sont décidées par un seul acteur.

En 2022 et 2023, cette gouvernance est amenée à être progressivement élargie et formalisée pour garantir sa lisibilité et sa pérennité.
 
## Publi.codes

Eléments obligatoires:
 
### Description courte

Le langage pour les algorithmes d'intérêt public

### Description longue

Publicodes est un langage déclaratif pour modéliser des domaines métiers complexes en les décomposant en règles élémentaires simples. Une explication plus terre à terre peut aussi être : plutôt que de faire un tableur incompréhensible et non versionné, faites un modèle publicodes et déployez le site de documentation automatiquement généré. 

### Usages actuels par des administrations publiques

Publicodes est le coeur de mon-entreprise.fr, nosgestesclimat.fr, mesaidesvelo.fr, futur.eco. Il est utilisé aussi par le Code du Travail Numérique, et d'autres projets publics sur lesquels nous n'avons aucune visibilité.

### Comment l'outil peut contribuer à éclairer des calculs de l'administration (outil de calcul direct, mise en ligne de simulateurs, etc.)

L'usage basique est un simple calculateur qui peut être lu et écrit par des profils non dev, notamment pour pérenniser un tableur qui s'échange en privé par mail. Le deuxième usage est d'itérer facilement et documenter l'algorithme (qui peut atteindre des dizaines de milliers de lignes) automatiquement sur un site Web ([exemple](nosgestesclimat.fr/documentation)). Le troisième usage est de générer automatiquement des formulaires complexes (avec des questions conditionnées par d'autres par exemple). 

### Quelle documentation pertinente pour un agent public qui souhaite explorer l'outil dans le cadre de la mise en oeuvre d'explications autour d'un calcul de son administration?

La documentation officielle publi.codes. L'article qui explique l'idée fondamentale https://kont.me/vers-implémentation-officielle-de-la-loi
 
Autres éléments optionnels:
 
### Où est le code source et sous quelle licence

https://github.com/betagouv/publicodes, licence MIT

### Qui développe l'outil (= qui a le contrôle sur les choix techniques)

Principalement l'équipe et les ex-membres de mon-entreprise.fr, mais une communauté aujourd'hui active et principalement centrée sur la communauté beta.

### (Bonus libre :D) Événements 

📅 [Journée ouverte à tout le monde de présentation de publicodes le 11 janvier au "Lieu" de la DITP, Paris 15ème](https://pad.incubateur.net/s/qTHaJc9VH#)

## Catala

### Descripion courte

[Catala](catala-lang.org/) est un langage de programmation dédié à la transformation du droit en code, orienté vers la production de décisions (*liquidations*) et garantissant un haut niveau d'assurance. À partir d'un document unique mêlant texte de loi et code informatique produit en binôme juriste-programmeur, Catala génère des bibliothèques logicielles prêtes à l'emploi dans le langage de votre choix.

### Description longue

[Catala](catala-lang.org/) est un langage de programmation dédié à la transformation du droit en code, orienté vers la production de décisions (*liquidations*) et garantissant un haut niveau d'assurance. Conçu à partir de l'état de l'art de la recherche en droit et en informatique, le langage s'adosse à une méthodologie de transformation du droit en code basé sur le *pair programming* et le *literate programming*. Concrètement, un·e juriste et un·e informaticien·ne déchiffrent ensemble les sources du droit (lois, décrets, jurisprudences, circulaires, etc.) et les annotent avec du code Catala pour établir article après article le programme informatique qui sera par consstruction fidèle à sa spécification juridique. Par exemple, [pour le calcul des allocations familiales](https://catala-lang.org/fr/examples/family-benefits#Code%20de%20la%20securite%20sociale-Partie%20reglementaire%20-%20Decrets%20simples-Livre%205%20:%20Prestations%20familiales%20et%20prestations%20assimilees-Titre%202%20:%20Prestations%20generales%20d%20entretien-Chapitre%201er%20:%20Allocations%20familiales-Article%20D521-1) ou [celui des aides au logement](https://zenodo.org/record/7357625).

![Pair programming en Catala](https://merigoux.ovh/assets/imagecatala2.png)

Le langage et la méthodologie Catala ont fait l'objet d'une investigation scientifique de plusieurs années. Cette investigation a fait ressortir plusieurs points de difficulté bloquants pour la transformation du droit en code. Voilà une liste non-exhaustive de ceux adressés par Catala : 

* communication entre informaticien·ne·s et juristes (syntaxe adaptée) ; 
* gestion de la logique cas de base/exceptions (logique par défaut) ;
* gestion de la logique des liquidations multiples (fonctions et variables contexte) ;
* gestion des arrondis (précision infinie du calcul).

Derrière le langage de surface, le compilateur de Catala assure la traduction vers un *lambda-calcul*, sorte de *lingua-franca* informatique. Aussi, il est possible de générer à partir d'un programme Catala une bibliothèque dans le langage de programmation de votre choix. Actuellement, le compilateur de Catala cible OCaml, Python et Javascript, mais il est possible de rajouter d'autres langages (bientôt C) ou de customiser le code générer pour l'adapter aux normes d'un SI particulier.

![Architecture Catala](https://merigoux.ovh/assets/imagecatala1.png)

Pour plus de précisions sur le langage, vous pouvez vous reporter aux articles scientifiques suivants : 

* Pour les juristes: [*Traduire la loi en code grâce au langage de programmation Catala*](https://hal.inria.fr/hal-03128248) ;
* Pour les informaticien·ne·s: [*Catala: A Programming Language for the Law*](https://hal.inria.fr/hal-03159939).

### Usage actuels par des administrations publiques

Aucun usage en production pour le moment. 

Cependant le langage a été pensé pour assurer la continuité et le renouvellement de l'algorithme de calcul de l'impôt sur le revenu, par les mêmes chercheurs qui [aident la DGFiP à en assurer la maintenance](https://www.inria.fr/fr/mlang-modernisation-calcul-impot-revenu). Catala a également été utilisé avec succès pour [découvrir des erreurs](https://hal.inria.fr/hal-03712130) et [suggérer des améliorations dans le droit spécifiant](https://hal.inria.fr/hal-03781578) [le calcul des aides au logement](https://hal.inria.fr/hal-03869335).

###  Comment l'outil peut contribuer à éclairer des calculs de l'administration (outil de calcul direct, mise en ligne de simulateurs, etc.)

Le langage de programmation Catala est pensé pour la liquidation ; il a donc vocation à être utilisé pour développer les futurs programmes qui remplaceront les algorithmes et calculettes *legacy* au cœur des SI d'administrations comme la DGFiP, la CNAF, Pôle Emploi, etc. Un programme Catala peut également être utilisé comme simulateur ; puisque Catala compile vers Javascript, il est facile de [créer une page web faisant office de simulateur avec](https://catala-lang.org/fr/examples/housing-benefits/visualization).

Les deux avantages comparatifs de Catala par rapport à d'autres langages de programmation dans ce contexte sont : 
* le haut niveau d'assurance et de fidélité par rapport au droit atteints grâce à la méthodologie *pair-programming* et la conception du langage et de son compilateur ;
* la possibilité d'expliquer chaque étape du calcul en faisant le lien vers la source juridique qui justifie cette étape.

### Quelle documentation pertinente pour un agent public qui souhaite explorer l'outil dans le cadre de la mise en oeuvre d'explications autour d'un calcul de son administration?

L'approche scientifique de Catala et les détails conceptuels de sa conception et de son implémentation sont décrits dans les papiers de recherche cités plus haut. Néamoins Catala dispose également d'une documentation plus opérationnelle : 

* Tutoriel de Catala: [en anglais (complet)](https://catala-lang.org/en/examples/tutorial), [en français (moins souvent mis à jour)](https://catala-lang.org/fr/examples/tutoriel)
* `CONTRIBUTING.md` : https://github.com/CatalaLang/catala/blob/master/CONTRIBUTING.md#writing-catala-code
* Options ligne de commande du compilateur : https://catala-lang.org/en/doc/catala
* Paquet opam (le langage est implémenté en OCaml): https://v3.ocaml.org/p/catala/0.7.0
* Pense-bête syntaxique : https://raw.githubusercontent.com/CatalaLang/catala/master/doc/syntax/syntax.pdf

Un petit mail à contact@catala-lang.org est aussi efficace pour un conseil personnalisé et un diagnostic rapide pour savoir si Catala est adapté à votre problème.
 
###  Où est le code source et sous quelle licence

* Dépôt sur GitHub: https://github.com/CatalaLang/catala
* Licence: Apache-2.0

### Qui développe l'outil (= qui a le contrôle sur les choix techniques)

L'outil est développé par l'[équipe-projet PROSECCO](https://team.inria.fr/prosecco/) au sein du [centre de Paris de l'Inria](https://www.inria.fr/fr/centre-inria-de-paris), institut de recherche en informatique. 

[Denis Merigoux](merigoux.ovh/), chercheur post-doctoral en est le co-créateur et chef de projet, et [Louis Gesbert](https://github.com/AltGr) est l'ingénieur de recherche chargé à temps plein de sa maintenance. Les modifications au langage sont décidées conjointement avec deux juristes : [Liane Huttner](https://www.eui.eu/people?id=liane-huttner), chercheuse post-doctorale en droit du numérique et [Sarah Lawsky](https://www.law.northwestern.edu/faculty/profiles/sarahlawsky), professeure de droit fiscal.
