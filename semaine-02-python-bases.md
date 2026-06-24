# 🗓️ Semaine 2 — Python : algorithmique & bases

[⬅️ Semaine 1](semaine-01-linux-git.md) · [Retour au sommaire](README.md) · [Semaine 3 ➡️](semaine-03-python-structures.md)

### 🎯 Objectifs de la semaine
- Comprendre ce qu'est un **algorithme** et le traduire en **Python**.
- Maîtriser **variables**, **types**, **conditions** (`if`), **boucles** (`for`, `while`).
- Écrire et appeler des **fonctions**.
- Lire une erreur Python sans paniquer.

> 📖 À lire en parallèle : **chapitre 2 du manuel** (« Python, ton premier langage »).

---

## 📘 Cours 2.1 — Un algorithme, c'est une recette

Un **algorithme**, c'est une suite d'étapes précises pour résoudre un problème. Faire un café, c'est un algorithme : *prendre une tasse → mettre une dosette → lancer la machine → attendre*. Programmer, c'est écrire ces recettes dans un langage que la machine comprend.

On utilise **Python** : lisible, gentil avec les débutants, et **enseigné dès la 1re année** (« algorithmique et programmation structurée avec Python »). Pour vérifier qu'il est là : `python3 --version`. Pour lancer un programme : `python3 mon_fichier.py`.

---

## 📘 Cours 2.2 — Variables et types

Une **variable** est une boîte étiquetée qui contient une valeur :

```python
age = 18              # un entier (int)
taille = 1.81         # un nombre à virgule (float)
prenom = "Alexandre"  # une chaîne de caractères (str)
majeur = True         # un booléen (bool) : True ou False
```

| Type | C'est quoi | Exemple |
|---|---|---|
| `int` | nombre entier | `42` |
| `float` | nombre à virgule | `3.14` |
| `str` | texte (*string*) | `"salut"` |
| `bool` | vrai/faux | `True`, `False` |

On affiche avec `print()`, on demande à l'utilisateur avec `input()` (qui renvoie **toujours** du texte → on convertit avec `int(...)` si besoin) :

```python
prenom = input("Ton prénom ? ")
print("Salut " + prenom + " !")
age = int(input("Ton âge ? "))
print("Dans 10 ans tu auras", age + 10, "ans.")
```

> 💡 Un `#` commence un **commentaire** : du texte ignoré par Python, pour t'expliquer à toi-même.

---

## 📘 Cours 2.3 — Conditions : choisir

Le programme prend des décisions avec `if` / `elif` / `else`. **L'indentation (les espaces en début de ligne) fait partie de la syntaxe** en Python : c'est elle qui dit ce qui est « à l'intérieur ».

```python
note = int(input("Ta note /20 ? "))
if note >= 16:
    print("Excellent !")
elif note >= 10:
    print("Validé.")
else:
    print("À retravailler.")
```

Opérateurs de comparaison : `==` (égal), `!=` (différent), `<`, `>`, `<=`, `>=`. Opérateurs logiques : `and`, `or`, `not`.

---

## 📘 Cours 2.4 — Boucles : répéter

**`for`** répète un nombre connu de fois ; **`while`** répète **tant qu'**une condition est vraie.

```python
for i in range(5):       # i prend les valeurs 0,1,2,3,4
    print("Tour", i)

compteur = 10
while compteur > 0:      # tant que compteur est positif
    print(compteur)
    compteur = compteur - 1
print("Décollage !")
```

> ⚠️ Une boucle `while` dont la condition ne devient jamais fausse tourne **à l'infini**. Vérifie toujours que quelque chose la fait avancer vers la sortie.

---

## 📘 Cours 2.5 — Fonctions : ranger et réutiliser

Une **fonction** est un bloc de code réutilisable, avec un nom. Le mot-clé `def` la définit ; `return` renvoie un résultat.

```python
def aire_rectangle(largeur, hauteur):
    return largeur * hauteur

surface = aire_rectangle(4, 3)   # appel de la fonction
print("Aire :", surface)         # 12
```

> À retenir : on écrit une fonction **une fois**, on l'appelle **autant qu'on veut**. C'est la base d'un code propre : si tu copies-colles 3 fois le même bloc, c'est qu'il te faut une fonction.

---

## 🧮 Coin Maths — la logique booléenne

Un **booléen** ne vaut que `True` ou `False`. On les combine comme en maths :

| Expression | Résultat |
|---|---|
| `True and False` | `False` (les deux doivent être vrais) |
| `True or False` | `True` (au moins un vrai suffit) |
| `not True` | `False` (l'inverse) |

C'est exactement ce que fait un processeur des milliards de fois par seconde. Comprendre `and`/`or`/`not`, c'est comprendre comment la machine « décide ».

---

## 🇬🇧 English Corner

| Anglais | Français |
|---|---|
| *variable* / *value* | variable / valeur |
| *string* / *integer* | chaîne de caractères / entier |
| *loop* / *to loop* | boucle / boucler |
| *statement* | instruction |
| *to return* | renvoyer (une valeur) |

**Mini-tâche** : provoque une erreur (ex. `print(age)` sans avoir défini `age`). Lis le message : `NameError: name 'age' is not defined`. Traduis-le. Les erreurs Python sont en anglais et **disent précisément** ce qui ne va pas — apprends à les lire, c'est 50 % du métier.

---

## 🎯 Exercices Semaine 2

### Exercice 2.1 — Réchauffement
1. Écris `salutations.py` qui demande prénom + âge et affiche une phrase personnalisée.
2. Affiche le type d'une variable avec `print(type(age))`.

### Exercice 2.2 — Le juge
Écris `pair_impair.py` : demande un nombre, affiche s'il est **pair** ou **impair** (indice : `nombre % 2 == 0`).

### Exercice 2.3 — La table de multiplication
Écris `table.py` : demande un nombre `n`, puis affiche sa table de 1 à 10 avec une boucle `for`.

### Exercice 2.4 — Le jeu du nombre mystère 🎲
Écris `mystere.py` : le programme choisit un nombre au hasard entre 1 et 100 (`import random` puis `random.randint(1, 100)`), et l'utilisateur doit le deviner. À chaque essai, indique « plus grand » ou « plus petit » (boucle `while`). Compte le nombre d'essais.

---

## 🎫 Épreuve de passage — Semaine 2

Badge **🏆 Premier Sang Python** quand les **3** niveaux sont réussis.

### 1. 🧠 Quiz auto-corrigé (5/5)
`./verifie.sh "ta réponse"` (minuscules, sans accents).

| # | Question | SHA-256 de la bonne réponse |
|---|---|---|
| 1 | Quel mot-clé définit une fonction en Python (un mot) ? | `cb8379ac2098aa165029e3938a51da0bcecfc008fd6795f401178647f96c5b34` |
| 2 | Quel caractère commence un commentaire sur une ligne en Python ? | `334359b90efed75da5f0ada1d5e6b256f4a6bd0aee7eb39c0f90182a021ffc8b` |
| 3 | Quelle fonction affiche du texte à l'écran en Python ? | `ce953a0eb08246617b7f849486c4b26a7af37e9d2e8f0e13b3ae1bf0da8a70a2` |
| 4 | Quel type représente un nombre à virgule (nom anglais, 5 lettres) ? | `76a7e234dc54e9c605b2cc9fdf71279526150df48c574bdfa69e436e0b3d5c18` |
| 5 | Quel mot-clé répète tant qu'une condition est vraie (un mot) ? | `07a8750738828ffd36a9bbfc198cf5d3bfd93e9f86b0e16e5aedeef8426804cf` |

### 2. 🚩 Défi du Boss
- `mystere.py` fonctionne : il tire un nombre au hasard, guide avec « plus grand / plus petit », et annonce le nombre d'essais à la fin.

### 3. 🏆 Preuve en ligne
Fais les **5 premiers exercices du parcours Python** sur **Exercism** : [exercism.org/tracks/python](https://exercism.org/tracks/python) (gratuit, corrige automatiquement).

> 🆓 **Alternative 100 % gratuite et en français** : **France-IOI**, niveau 1 → [france-ioi.org](http://www.france-ioi.org/) ; ou **Codingame** → [codingame.com](https://www.codingame.com/).

➡️ Les 3 réussis ? **🏆 Badge « Premier Sang Python ».** `./progression.sh done 2 all` → [Semaine 3](semaine-03-python-structures.md) !

---

## ✅ Checklist fin de Semaine 2
- [ ] Je sais déclarer des variables et reconnaître `int`, `float`, `str`, `bool`.
- [ ] Je maîtrise `if`/`elif`/`else` et l'indentation.
- [ ] Je sais écrire une boucle `for` et une boucle `while`.
- [ ] Je sais définir et appeler une fonction avec `def` et `return`.
- [ ] Mon jeu du nombre mystère tourne.
- [ ] Quiz 5/5 + preuve en ligne terminée.
