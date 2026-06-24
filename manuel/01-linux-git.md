# Chapitre 1 — Linux, Git et toi

## Pourquoi on commence par Linux

Imagine que tu apprends la cuisine. Avant les recettes, tu dois connaître ta **cuisine** : où sont les couteaux, comment marche le four, où on range les ingrédients. En informatique, cette cuisine, c'est le **système d'exploitation**.

Tu connais sûrement Windows ou macOS. Il en existe un troisième, gratuit et ouvert : **Linux**. Et c'est lui le roi du monde professionnel : **la grande majorité des serveurs** qui font tourner les sites web, les applications et les services en ligne sont sous Linux. Apprendre Linux, ce n'est pas une option : c'est le terrain sur lequel tu vas jouer toute ta carrière.

> À retenir : Windows pour le grand public, Linux pour les serveurs et les pros. En cybersécurité et en développement, tu travailleras énormément sous Linux.

Tu n'as pas besoin de jeter ton ordinateur. Tu peux avoir Linux **à l'intérieur** de Windows (avec WSL), ou dans une **machine virtuelle** (un ordinateur simulé dans ton ordinateur). Le cahier d'exercices te guide pour l'installer.

## Le terminal : parler à la machine avec des mots

Sous Windows, tu cliques sur des icônes. Sous Linux, tu peux faire pareil, mais les pros utilisent surtout le **terminal** : une fenêtre où tu **tapes des commandes**.

Pourquoi taper, alors qu'on pourrait cliquer ? Parce que c'est **plus rapide**, **plus précis**, et surtout **automatisable**. Quand tu sais écrire une commande, tu peux la répéter mille fois sans effort. Un clic, lui, ne se répète pas tout seul.

Pense au terminal comme à **parler à un assistant très obéissant mais très bête** : il fait *exactement* ce que tu dis, ni plus ni moins. Si tu lui dis « supprime tout », il supprime tout, sans te demander si tu es sûr. D'où la prudence.

> À retenir : le terminal exécute tes ordres à la lettre. C'est sa force (puissance, automatisation) et son danger (une faute de frappe peut faire mal). On réfléchit avant d'appuyer sur Entrée.

Quelques ordres de base, en français :
- `pwd` : « où suis-je ? »
- `ls` : « montre-moi ce qu'il y a ici »
- `cd` : « emmène-moi dans ce dossier »
- `mkdir` : « crée un dossier »
- `cat` : « affiche le contenu de ce fichier »

## Les permissions : qui a le droit de quoi

Sous Linux, chaque fichier a un **propriétaire** et des **droits**. C'est comme les clés d'un immeuble : certaines personnes peuvent entrer dans certaines pièces, d'autres non.

Trois actions possibles sur un fichier : le **lire**, l'**écrire** (le modifier), et l'**exécuter** (le lancer, s'il s'agit d'un programme). Et trois publics : **toi** (le propriétaire), **ton groupe**, et **tout le monde**.

Tu verras souvent des nombres comme `755` ou `644`. C'est juste une façon courte d'écrire ces droits. Pas de panique : on les manipule tellement souvent qu'ils finiront par te sembler naturels. Le cahier d'exercices t'apprend à les lire.

## Un script : enchaîner les ordres

Quand tu tapes plusieurs commandes souvent, tu peux les écrire dans un **fichier** et les lancer toutes d'un coup. Ce fichier s'appelle un **script**. C'est ta première forme de programmation : tu ne cliques plus, tu **automatises**.

Ton tout premier script affichera juste un message de bienvenue avec la date. Rien de spectaculaire — mais c'est le moment où tu passes de « celui qui utilise l'ordinateur » à « celui qui lui donne des ordres ».

## Git : la machine à remonter le temps

Voici une situation que tout débutant connaît. Tu travailles sur un projet. Ça marche. Tu modifies quelque chose. Ça casse. Et là… impossible de te souvenir de ce que tu as changé. Tu as bien gardé `projet_final.zip`, puis `projet_final_v2.zip`, puis `projet_vraiment_final.zip`… mais lequel marchait, déjà ?

**Git** résout ça pour de bon. C'est un outil qui prend une **photo** de ton projet à chaque étape importante. Chaque photo s'appelle un **commit**. Tu peux à tout moment :
- revenir à une photo précédente (annuler une bêtise),
- voir exactement ce qui a changé entre deux photos,
- travailler à plusieurs sans vous écraser.

> À retenir : un commit, c'est une photo de ton projet à un instant donné, avec une étiquette qui dit ce que tu as fait. Git garde toutes les photos dans l'ordre : c'est ton album, ta machine à remonter le temps.

Et **GitHub** dans tout ça ? C'est un **site web** où tu ranges tes albums Git **en ligne**. Deux avantages énormes :
1. **Sauvegarde** : même si ton ordinateur brûle, ton code est en sécurité.
2. **Portfolio** : un recruteur peut voir ce que tu as construit. En 2026, un bon profil GitHub vaut parfois plus qu'un CV.

Attention à ne pas confondre deux gestes :
- **commiter** = prendre une photo, **sur ton ordinateur** (ça marche même sans Internet) ;
- **pousser** (*push*) = envoyer tes photos **sur GitHub**.

Le cycle que tu répéteras toute ta vie de dev : je modifie → `git add` (je prépare la photo) → `git commit` (clic !) → `git push` (je publie).

## Ce qu'il faut retenir de ce chapitre

- Linux est le système des serveurs : tu vas l'utiliser partout.
- Le terminal te rend puissant : tu donnes des ordres précis et répétables.
- Les permissions disent qui a le droit de lire, écrire, exécuter.
- Un script automatise une suite de commandes.
- Git photographie ton projet étape par étape ; GitHub le sauvegarde en ligne et le montre au monde.

Maintenant, file dans le cahier de la **semaine 1** et mets les mains dans le cambouis. On ne devient pas un pro en lisant — on le devient en tapant des commandes.
