# 🗓️ Semaine 3 — Python : structures de données & mini-projet

[⬅️ Semaine 2](semaine-02-python-bases.md) · [Retour au sommaire](README.md) · [Semaine 4 ➡️](semaine-04-langage-c.md)

### 🎯 Objectifs de la semaine
- Manipuler les **structures de données** : listes, tuples, dictionnaires, ensembles.
- **Lire et écrire des fichiers**.
- Organiser son code en **modules** et gérer les erreurs (`try`/`except`).
- Boucler un **mini-projet complet** du début à la fin.

> 📖 À lire en parallèle : **chapitre 3 du manuel** (« Ranger l'information »).

---

## 📘 Cours 3.1 — Les listes

Une **liste** stocke plusieurs valeurs ordonnées, dans une seule variable :

```python
courses = ["pain", "lait", "œufs"]
print(courses[0])          # "pain" (on compte à partir de 0)
courses.append("café")     # ajoute à la fin
courses[1] = "beurre"      # modifie
print(len(courses))        # 4 : nombre d'éléments
for item in courses:
    print("-", item)
```

Méthodes utiles : `.append()`, `.remove()`, `.sort()`, `len(liste)`, `in` (test d'appartenance : `"pain" in courses`).

---

## 📘 Cours 3.2 — Dictionnaires, tuples, ensembles

- **Dictionnaire (`dict`)** : associe une **clé** à une **valeur** (comme un annuaire) :
  ```python
  eleve = {"nom": "Alex", "age": 18, "moyenne": 14.5}
  print(eleve["nom"])        # "Alex"
  eleve["ville"] = "Paris"   # ajoute une paire
  ```
- **Tuple** : comme une liste mais **non modifiable** : `point = (3, 5)`.
- **Ensemble (`set`)** : collection **sans doublons** : `set([1, 2, 2, 3])` → `{1, 2, 3}`.

| Structure | Ordonnée ? | Modifiable ? | Doublons ? | Usage typique |
|---|---|---|---|---|
| liste | oui | oui | oui | une suite d'éléments |
| tuple | oui | non | oui | des données fixes |
| dict | oui (3.7+) | oui | clés uniques | associer clé → valeur |
| set | non | oui | non | éliminer les doublons |

---

## 📘 Cours 3.3 — Les fichiers

Lire et écrire sur le disque, c'est la base d'un vrai programme. On utilise `open()` avec un **mode** : `"r"` (lecture), `"w"` (écriture, écrase), `"a"` (ajout).

```python
# Écrire
with open("journal.txt", "w") as f:
    f.write("Première ligne\n")

# Lire
with open("journal.txt", "r") as f:
    contenu = f.read()
print(contenu)
```

> À retenir : le bloc `with open(...) as f:` ferme automatiquement le fichier à la fin. C'est la bonne pratique : on oublie ainsi jamais de « refermer le robinet ».

---

## 📘 Cours 3.4 — Modules et erreurs

Python est livré avec une **bibliothèque** énorme. On importe ce dont on a besoin :

```python
import random        # nombres aléatoires
import json          # lire/écrire du JSON
from datetime import date
print(date.today())
```

Pour éviter qu'une erreur fasse planter le programme, on l'**attrape** :

```python
try:
    age = int(input("Ton âge ? "))
except ValueError:
    print("Ce n'était pas un nombre !")
```

---

## 🧮 Coin Maths — un peu de complexité

Si tu cherches un nom dans une liste de 1000 éléments en la parcourant un par un, ça peut prendre jusqu'à 1000 comparaisons. Dans un **dictionnaire**, retrouver une valeur par sa clé est quasi **instantané**, quelle que soit la taille. C'est la notion de **complexité** : toutes les structures ne se valent pas selon l'usage. Choisir la bonne structure, c'est déjà optimiser.

---

## 🇬🇧 English Corner

| Anglais | Français |
|---|---|
| *list* / *item* | liste / élément |
| *key* / *value* | clé / valeur |
| *to read* / *to write* | lire / écrire |
| *to import* / *library* | importer / bibliothèque |
| *to handle an error* | gérer une erreur |

**Mini-tâche** : sur [docs.python.org](https://docs.python.org/3/), cherche la méthode `dict.get()` et explique en une phrase ce qu'elle fait de mieux que `dict["clé"]`.

---

## 🎯 Exercices Semaine 3

### Exercice 3.1 — Inventaire
Crée une liste de 5 jeux vidéo. Affiche-la triée par ordre alphabétique (`.sort()`), puis demande à l'utilisateur d'en ajouter un et réaffiche.

### Exercice 3.2 — Le carnet de contacts
Avec un dictionnaire `{nom: téléphone}`, écris un programme qui permet d'**ajouter**, **chercher** et **lister** des contacts (menu dans une boucle `while`).

### Exercice 3.3 — Mini-projet : gestionnaire de tâches 📝
Écris `taches.py`, une vraie petite appli en ligne de commande :
1. Un menu : (1) ajouter une tâche, (2) lister, (3) marquer faite, (4) quitter.
2. Les tâches sont stockées dans une **liste de dictionnaires** : `{"titre": "...", "faite": False}`.
3. À chaque lancement, on **charge** les tâches depuis un fichier `taches.json` (avec `json.load`) ; en quittant, on **sauvegarde** (`json.dump`).
4. Gère proprement le cas où le fichier n'existe pas encore (`try`/`except`).

C'est ton premier programme qui **se souvient** entre deux exécutions. 🎉

---

## 🎫 Épreuve de passage — Semaine 3

Badge **🏆 Forgeron des Données** quand les **3** niveaux sont réussis.

### 1. 🧠 Quiz auto-corrigé (5/5)
`./verifie.sh "ta réponse"` (minuscules, sans accents).

| # | Question | SHA-256 de la bonne réponse |
|---|---|---|
| 1 | Comment se nomme en Python le type qui associe une clé à une valeur (3 lettres) ? | `6ab47d70854a8c690a0c2035be903f3d812cbab06f9e442e9b10ad70b1acd446` |
| 2 | Quelle méthode ajoute un élément à la fin d'une liste ? | `ae524b54d9b5acbe3bbf0a4f4825bae82bca8b0a474878c2713394ea284ef929` |
| 3 | Quelle fonction donne le nombre d'éléments d'une liste ? | `71fa9faaa6f884aa11f4cea21477b2204a48a4fa7f05cecad00a1250eeeffb4c` |
| 4 | Quel mode passe-t-on à `open()` pour lire un fichier (une lettre) ? | `454349e422f05297191ead13e21d3db520e5abef52055e4964b82fb213f593a1` |
| 5 | Quelle collection ne contient que des éléments uniques (mot anglais, 3 lettres) ? | `6ee0eb490ff832101cf82a3d387c35f29e4230be786978f7acf9e811febf6723` |

### 2. 🚩 Défi du Boss
- `taches.py` fonctionne : on ajoute des tâches, on les liste, on en marque comme faites, et **elles persistent** dans `taches.json` entre deux lancements.

### 3. 🏆 Preuve en ligne
Termine **5 exercices supplémentaires** du parcours **Python sur Exercism** portant sur les listes/dictionnaires : [exercism.org/tracks/python](https://exercism.org/tracks/python).

> 🆓 **Alternative gratuite** : les exercices « listes » et « dictionnaires » de **France-IOI** ou les puzzles **Codingame** « Easy ».

➡️ **🏆 Badge « Forgeron des Données ».** `./progression.sh done 3 all` → [Semaine 4](semaine-04-langage-c.md) !

---

## ✅ Checklist fin de Semaine 3
- [ ] Je manipule listes, dictionnaires, tuples et sets, et je sais quand choisir lequel.
- [ ] Je sais lire et écrire un fichier avec `with open(...)`.
- [ ] J'importe des modules et j'attrape les erreurs avec `try`/`except`.
- [ ] Mon gestionnaire de tâches sauvegarde et recharge ses données.
- [ ] Quiz 5/5 + preuve en ligne terminée.
