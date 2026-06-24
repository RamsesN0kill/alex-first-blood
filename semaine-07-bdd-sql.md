# 🗓️ Semaine 7 — Bases de données : SQL & modélisation UML

[⬅️ Semaine 6](semaine-06-php.md) · [Retour au sommaire](README.md) · [Semaine 8 ➡️](semaine-08-reseaux.md)

### 🎯 Objectifs de la semaine
- Comprendre ce qu'est une **base de données relationnelle**.
- Écrire des requêtes **SQL** : `SELECT`, `INSERT`, `UPDATE`, `DELETE`, `WHERE`, `JOIN`.
- **Modéliser** une base avant de la construire (clés, relations, UML).
- Connecter une base à du **PHP**.

> 📖 À lire en parallèle : **chapitre 7 du manuel** (« Ranger des montagnes de données »).

---

## 📘 Cours 7.1 — Pourquoi une base de données ?

En semaine 3, tu sauvegardais dans un fichier. Ça marche pour 10 tâches. Mais pour **un million de clients**, avec des recherches rapides, plusieurs utilisateurs simultanés et zéro perte ? Il faut une **base de données** (BDD), gérée par un **SGBD** (système de gestion de BDD) comme **MySQL/MariaDB**, PostgreSQL ou SQLite.

Une base **relationnelle** range les données dans des **tables** (comme des feuilles de tableur) :

**Table `eleves`**

| id | nom | age | ville |
|---|---|---|---|
| 1 | Alex | 18 | Paris |
| 2 | Sofia | 19 | Lyon |

- Chaque **ligne** = un enregistrement. Chaque **colonne** = un champ avec un type.
- La colonne `id` est la **clé primaire** : elle identifie **chaque ligne de façon unique**.

---

## 📘 Cours 7.2 — Le langage SQL

**SQL** (*Structured Query Language*) est le langage universel des bases relationnelles. Les 4 opérations de base (le « CRUD ») :

```sql
-- CREATE : ajouter une ligne
INSERT INTO eleves (nom, age, ville) VALUES ('Alex', 18, 'Paris');

-- READ : lire des lignes
SELECT nom, ville FROM eleves WHERE age >= 18;

-- UPDATE : modifier
UPDATE eleves SET ville = 'Marseille' WHERE id = 1;

-- DELETE : supprimer
DELETE FROM eleves WHERE id = 2;
```

| Mot-clé | Rôle |
|---|---|
| `SELECT … FROM` | choisir quelles colonnes, dans quelle table |
| `WHERE` | filtrer les lignes selon une condition |
| `ORDER BY` | trier le résultat |
| `INSERT INTO` | ajouter une ligne |
| `UPDATE … SET` | modifier des lignes |
| `DELETE FROM` | supprimer des lignes |

> À retenir : `SELECT` lit, `INSERT` crée, `UPDATE` modifie, `DELETE` supprime. Et la clause `WHERE` est ta meilleure amie : sans elle, un `UPDATE` ou un `DELETE` s'applique à **TOUTES** les lignes. Prudence absolue.

---

## 📘 Cours 7.3 — Relier les tables : les relations

La force du modèle relationnel : **relier** les tables. Un élève a plusieurs notes ? On crée une table `notes` avec une **clé étrangère** qui pointe vers `eleves.id` :

**Table `notes`** : `id`, `eleve_id` (→ eleves.id), `matiere`, `note`

On rassemble les données reliées avec une **jointure** (`JOIN`) :

```sql
SELECT eleves.nom, notes.matiere, notes.note
FROM eleves
JOIN notes ON notes.eleve_id = eleves.id;
```

Types de relations : **un-à-un**, **un-à-plusieurs** (un élève → plusieurs notes), **plusieurs-à-plusieurs** (des élèves ↔ des cours).

---

## 📘 Cours 7.4 — Modéliser avant de construire (UML)

On ne construit pas une base au hasard : on la **dessine** d'abord. Le programme parle de « modélisation et conception de base de données avec **UML2** ». On schématise les **entités** (tables), leurs **attributs** (colonnes) et leurs **relations** (avec les cardinalités : 1, 0..1, 1..*, *).

> 💡 Un bon schéma évite 90 % des galères. On réfléchit aux tables, aux clés et aux liens **sur papier ou sur un outil** (draw.io, Looping, Mocodo) avant la première ligne de SQL.

---

## 📘 Cours 7.5 — PHP + base de données

On relie tout : PHP interroge la base via **PDO** (la bonne méthode, sécurisée) :

```php
<?php
$pdo = new PDO("mysql:host=localhost;dbname=ecole", "root", "");
$stmt = $pdo->prepare("SELECT * FROM eleves WHERE ville = ?");
$stmt->execute(["Paris"]);          // requête PRÉPARÉE = protège des injections SQL
$eleves = $stmt->fetchAll();
?>
```

> ⚠️ Les **requêtes préparées** (avec `?` ou des paramètres nommés) protègent des **injections SQL** — l'attaque que tu as vue dans CyberHero. On ne colle JAMAIS une donnée utilisateur directement dans une requête.

---

## 🧮 Coin Maths — la logique des ensembles

Une jointure, c'est de la **théorie des ensembles** : un `INNER JOIN` est une **intersection** (les lignes présentes des deux côtés), un `LEFT JOIN` garde tout l'ensemble de gauche. `WHERE age >= 18 AND ville = 'Paris'` combine des conditions avec la logique booléenne de la semaine 2. Les maths que tu as vues reviennent, déguisées en requêtes.

---

## 🇬🇧 English Corner

| Anglais | Français |
|---|---|
| *table* / *row* / *column* | table / ligne / colonne |
| *query* | requête |
| *primary key* / *foreign key* | clé primaire / clé étrangère |
| *to join* | joindre (relier des tables) |
| *to query* | interroger (une base) |

**Mini-tâche** : « SQL » se prononce « *ess-cue-el* » ou « *sequel* ». Cherche ce que signifie le sigle **CRUD** (4 mots anglais) et associe chacun à une commande SQL.

---

## 🎯 Exercices Semaine 7

### Exercice 7.1 — Installe et explore
1. Installe MariaDB (`sudo apt install mariadb-server`) ou utilise **SQLite** (plus léger), ou **phpMyAdmin**.
2. Crée une base `ecole` et la table `eleves` (id, nom, age, ville).
3. Insère 5 élèves.

### Exercice 7.2 — Interroge
Écris des requêtes pour : tous les élèves majeurs ; les élèves de Paris triés par âge ; le nombre d'élèves par ville (`GROUP BY`).

### Exercice 7.3 — Modélise
Sur papier ou draw.io, dessine le modèle d'un **mini-blog** : tables `auteurs`, `articles`, `commentaires`, avec leurs clés et relations. Identifie les cardinalités.

### Exercice 7.4 — Mini-projet : le carnet de notes 📒
Reprends ton modèle `eleves` + `notes` :
1. Crée les deux tables avec la clé étrangère.
2. Insère des données et écris une requête avec **jointure** affichant chaque élève avec ses notes et sa moyenne (`AVG`).
3. **Bonus** : une petite page PHP (PDO) qui affiche ce tableau dans le navigateur.

---

## 🎫 Épreuve de passage — Semaine 7

Badge **🏆 Maître des Bases** quand les **3** niveaux sont réussis.

### 1. 🧠 Quiz auto-corrigé (5/5)
`./verifie.sh "ta réponse"` (minuscules, sans accents).

| # | Question | SHA-256 de la bonne réponse |
|---|---|---|
| 1 | Quelle commande SQL lit/récupère des données (un mot) ? | `b1a36d25d9633ed2ac04939fcb614ccb2b513243c148f18694592ae037f9d35f` |
| 2 | Quelle commande SQL ajoute une ligne (un mot anglais) ? | `1e22560cee2c4b727c6a117792e04a6769efbe2395f8e2528c603a153a446477` |
| 3 | Comment nomme-t-on la clé qui identifie chaque ligne de façon unique (deux mots) ? | `596856f21af6893789deba5c886babc39d73192f5f4c0ee07383bc8e78efcd46` |
| 4 | Quelle clause SQL filtre les lignes selon une condition (un mot) ? | `b48111c10c65fc119368edafb19f97451759ee90b3f44647368135ca47aa4753` |
| 5 | Quelle commande SQL supprime des lignes (un mot) ? | `6197595503f01ee2a34e403fe08d2e1d9d0c14cf1cdfc2b74739895dc9a15a04` |

### 2. 🚩 Défi du Boss
- Ta base `ecole` existe avec `eleves` et `notes` reliées par clé étrangère, et ta requête à **jointure** affiche chaque élève avec ses notes et sa moyenne.

### 3. 🏆 Preuve en ligne
Termine le module **« SQL »** de **SQLBolt** (toutes les leçons 1 à 6) : [sqlbolt.com](https://sqlbolt.com/) (gratuit, interactif, dans le navigateur).

> 🆓 **Alternative gratuite** : le cours **SQL de W3Schools** (« Try it yourself ») ou les exercices SQL de **Root-Me**.

➡️ **🏆 Badge « Maître des Bases ».** `./progression.sh done 7 all` → [Semaine 8](semaine-08-reseaux.md) !

---

## ✅ Checklist fin de Semaine 7
- [ ] Je comprends tables, lignes, colonnes, clé primaire et clé étrangère.
- [ ] J'écris des requêtes `SELECT`/`INSERT`/`UPDATE`/`DELETE` avec `WHERE`.
- [ ] Je relie des tables avec une jointure (`JOIN`).
- [ ] Je sais modéliser une base avant de la créer.
- [ ] Quiz 5/5 + preuve en ligne terminée.
