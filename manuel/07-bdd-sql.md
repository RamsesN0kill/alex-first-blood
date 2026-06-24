# Chapitre 7 — Ranger des montagnes de données

## Le fichier ne suffit plus

En semaine 3, tu sauvegardais tes tâches dans un fichier. Parfait pour dix tâches. Mais imagine un site avec **un million de clients**, des recherches instantanées, des dizaines d'utilisateurs qui écrivent **en même temps**, et l'interdiction absolue de perdre la moindre donnée. Un simple fichier s'effondre. Il faut un outil conçu pour ça : une **base de données**, pilotée par un **SGBD** (système de gestion de base de données) comme MySQL/MariaDB.

## Le modèle relationnel : des tableaux reliés

La forme la plus répandue est la base **relationnelle**. L'idée est simple et géniale : on range les données dans des **tables**, comme des feuilles de tableur. Une table `clients`, une table `commandes`, une table `produits`… Chaque **ligne** est un enregistrement (un client), chaque **colonne** un champ (son nom, son email).

Une colonne spéciale, la **clé primaire** (souvent un `id`), donne à chaque ligne un identifiant **unique** — comme un numéro de sécurité sociale. Impossible de confondre deux clients, même s'ils ont le même nom.

> À retenir : une base relationnelle range les données en tables (lignes = enregistrements, colonnes = champs). La clé primaire identifie chaque ligne de façon unique.

## SQL : parler à la base

Pour dialoguer avec la base, un langage universel : le **SQL**. Il est étonnamment proche de l'anglais courant. Quatre actions de base, qu'on résume par « CRUD » :
- **lire** : `SELECT ... FROM ...` (« sélectionne ces colonnes dans cette table ») ;
- **créer** : `INSERT INTO ...` (« insère une ligne ») ;
- **modifier** : `UPDATE ... SET ...` ;
- **supprimer** : `DELETE FROM ...`.

Et un mot magique : `WHERE`, qui **filtre** (« seulement les clients de Paris »). Attention, leçon qui sauve des carrières : un `UPDATE` ou un `DELETE` **sans `WHERE`** s'applique à **toutes** les lignes de la table. On vérifie toujours deux fois.

## Relier les tables : la vraie force

Le génie du modèle relationnel, c'est de **relier** les tables entre elles. Un client a plusieurs commandes ? On met dans la table `commandes` une **clé étrangère** qui pointe vers l'`id` du client. Pour rassembler les informations dispersées, on fait une **jointure** (`JOIN`) : « donne-moi chaque client **avec** ses commandes ». C'est ce qui permet de modéliser le monde réel, où tout est connecté.

## Dessiner avant de construire

On ne bâtit pas une maison sans plan, ni une base sans **modèle**. Avant la première ligne de SQL, on **schématise** : quelles tables, quelles colonnes, quelles relations, et avec quelles *cardinalités* (un client a-t-il une ou plusieurs commandes ?). C'est l'objet de la modélisation (avec **UML**, enseigné en cours). Un bon schéma évite des semaines de galère plus tard.

> À retenir : `SELECT` lit, `INSERT` crée, `UPDATE` modifie, `DELETE` supprime ; `WHERE` filtre. On relie les tables avec des clés étrangères et des jointures. Et on **modélise** la base avant de la construire.

## Ce qu'il faut retenir de ce chapitre

- Au-delà de quelques données, on passe du fichier à une vraie base de données.
- Le modèle relationnel range tout en tables reliées par des clés.
- SQL est le langage universel : CRUD + `WHERE`, et les jointures pour relier.
- On dessine (modélise) la base avant de la coder.

Au cahier de la **semaine 7**, tu montes un carnet de notes avec deux tables reliées et tu en extrais les moyennes par une jointure. Tu sais désormais stocker pour de vrai.
