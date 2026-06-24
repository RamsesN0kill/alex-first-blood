# 🗓️ Semaine 4 — Le langage C : proche de la machine

[⬅️ Semaine 3](semaine-03-python-structures.md) · [Retour au sommaire](README.md) · [Semaine 5 ➡️](semaine-05-web-front.md)

### 🎯 Objectifs de la semaine
- Comprendre la différence entre un langage **compilé** (C) et **interprété** (Python).
- Écrire, **compiler** (`gcc`) et exécuter un programme C.
- Manipuler **types**, **tableaux**, **fonctions** et surtout… les **pointeurs**.
- Saisir comment la **mémoire** fonctionne vraiment.

> 📖 À lire en parallèle : **chapitre 4 du manuel** (« Sous le capot : le C »).

---

## 📘 Cours 4.1 — Pourquoi apprendre le C ?

Python te cache tout le travail compliqué. Le **C**, lui, te met **face à la machine** : tu gères toi-même la mémoire, les types ont une taille précise, et rien n'est automatique. C'est plus dur… mais c'est exactement pour ça qu'on l'enseigne : **comprendre le C, c'est comprendre comment l'ordinateur fonctionne vraiment.** Linux, Windows, Python lui-même : tout est écrit en C (ou presque).

| | Python (interprété) | C (compilé) |
|---|---|---|
| Exécution | ligne par ligne par un interpréteur | traduit en binaire **avant** par un compilateur |
| Vitesse | plus lent | très rapide |
| Mémoire | gérée pour toi | **gérée par toi** |
| Erreurs | à l'exécution | beaucoup détectées à la compilation |

---

## 📘 Cours 4.2 — Compiler et exécuter

Le code C ne s'exécute pas directement : on le **compile** en un programme binaire.

```c
#include <stdio.h>   // pour printf

int main() {
    printf("Premier sang en C !\n");
    return 0;        // 0 = tout s'est bien passé
}
```

```bash
gcc bonjour.c -o bonjour   # compile : crée le programme "bonjour"
./bonjour                  # exécute
```

> À retenir : en C, chaque instruction se termine par un point-virgule `;`, le programme commence dans la fonction `main`, et il faut **compiler avec `gcc`** avant de pouvoir lancer.

---

## 📘 Cours 4.3 — Types et variables

En C, on **déclare** le type de chaque variable, et chaque type a une **taille fixe** en mémoire :

```c
int age = 18;            // entier (souvent 4 octets)
float taille = 1.81;     // nombre à virgule
char initiale = 'A';     // un seul caractère (1 octet)
```

`printf` utilise des **marqueurs** : `%d` (entier), `%f` (float), `%c` (caractère), `%s` (chaîne) :

```c
printf("J'ai %d ans et je mesure %.2f m\n", age, taille);
```

---

## 📘 Cours 4.4 — Tableaux et fonctions

```c
int notes[3] = {12, 15, 9};   // tableau de 3 entiers
printf("%d\n", notes[0]);     // 12

int addition(int a, int b) {  // une fonction typée
    return a + b;
}
```

Comme en Python, une fonction range et réutilise du code — mais ici on précise le type de **chaque** paramètre **et** de la valeur de retour.

---

## 📘 Cours 4.5 — Les pointeurs (le grand morceau)

Chaque variable est rangée quelque part en mémoire, à une **adresse** (comme une maison a une adresse dans une rue). Un **pointeur** est une variable qui contient… **l'adresse** d'une autre variable.

```c
int age = 18;
int *p = &age;     // p contient l'ADRESSE de age (& = "adresse de")
printf("%d\n", age);    // 18  : la valeur
printf("%p\n", p);      // ex 0x7ffd... : l'adresse
printf("%d\n", *p);     // 18  : la valeur AU BOUT du pointeur (* = "contenu de")
*p = 25;                // modifie age via le pointeur
printf("%d\n", age);    // 25 !
```

Deux symboles à ne pas confondre :
- `&variable` = « l'**adresse de** cette variable ».
- `*pointeur` = « la **valeur stockée à** cette adresse » (on dit *déréférencer*).

> À retenir : un pointeur ne contient pas une valeur, il contient **où trouver** la valeur. C'est l'idée la plus déroutante du C au début, et la plus importante. Prends ton temps, dessine des cases mémoire sur papier.

---

## 🧮 Coin Maths — binaire et hexadécimal (épisode 2)

En C, on voit la mémoire de près. Un `char` tient sur **1 octet** = 8 bits = un nombre de 0 à 255. On écrit souvent ces valeurs en **hexadécimal** (base 16) : `0xFF` = 255, `0x10` = 16. Les **adresses** mémoire affichées par `%p` sont en hexa. Réviser la conversion binaire ↔ décimal ↔ hexa de la semaine 1 prend tout son sens ici.

---

## 🇬🇧 English Corner

| Anglais | Français |
|---|---|
| *to compile* / *compiler* | compiler / compilateur |
| *pointer* / *address* | pointeur / adresse |
| *memory* | mémoire |
| *array* | tableau |
| *to allocate* | allouer (de la mémoire) |

**Mini-tâche** : un message classique du compilateur est `warning: unused variable`. Traduis-le, et corrige le warning dans un de tes programmes.

---

## 🎯 Exercices Semaine 4

### Exercice 4.1 — Premiers pas compilés
1. Écris, compile et lance `bonjour.c`.
2. Écris `infos.c` qui déclare ton prénom (`char prenom[] = "Alex";`), ton âge et ta taille, et les affiche avec les bons marqueurs.

### Exercice 4.2 — Calculs
Écris `calculs.c` : une fonction `int max(int a, int b)` qui renvoie le plus grand des deux, et un `main` qui la teste sur plusieurs paires.

### Exercice 4.3 — La moyenne
Écris `moyenne.c` : un tableau de 5 notes, une boucle `for` qui les additionne, et l'affichage de la moyenne.

### Exercice 4.4 — Apprivoiser les pointeurs
Écris `echange.c` avec une fonction `void echange(int *a, int *b)` qui **échange** les valeurs de deux variables via leurs pointeurs. Vérifie dans `main` que `x` et `y` ont bien été inversés. *(C'est l'exercice qui « fait tilt » sur les pointeurs.)*

---

## 🎫 Épreuve de passage — Semaine 4

Badge **🏆 Dompteur des Pointeurs** quand les **3** niveaux sont réussis.

### 1. 🧠 Quiz auto-corrigé (5/5)
`./verifie.sh "ta réponse"` (minuscules, sans accents).

| # | Question | SHA-256 de la bonne réponse |
|---|---|---|
| 1 | Quel caractère termine chaque instruction en C ? | `41b805ea7ac014e23556e98bb374702a08344268f92489a02f0880849394a1e4` |
| 2 | Quelle fonction affiche du texte formaté en C ? | `2abfca9157e93993aa507ca6b6ce908708c3a5c5b43bc7251638b0420361c79f` |
| 3 | Quel symbole donne l'adresse d'une variable en C ? | `951dcee3a7a4f3aac67ec76a2ce4469cc76df650f134bf2572bf60a65c982338` |
| 4 | Comment s'appelle une variable qui stocke une adresse mémoire (un mot) ? | `874686ef74059fce5a1beffe1e739ebb908151c02b2f65c6360869e03128b403` |
| 5 | Quel compilateur GNU compile un fichier C sous Linux (3 lettres) ? | `94f0fa7f897ccce65856dc5a98bae4bf6957a346766613d79414c976d093aa4a` |

### 2. 🚩 Défi du Boss
- `echange.c` compile sans warning (`gcc -Wall echange.c -o echange`) et **inverse réellement** deux variables via des pointeurs.

### 3. 🏆 Preuve en ligne
Commence le **parcours C sur Exercism** et termine les 3 premiers exercices : [exercism.org/tracks/c](https://exercism.org/tracks/c).

> 🆓 **Alternative gratuite** : les exercices C de **Root-Me** (section Programmation) ou les puzzles C de **Codingame**. Le cours de référence **« C Programming » sur learn-c.org** est gratuit et interactif.

➡️ **🏆 Badge « Dompteur des Pointeurs ».** `./progression.sh done 4 all` → [Semaine 5](semaine-05-web-front.md) !

---

## ✅ Checklist fin de Semaine 4
- [ ] Je sais compiler avec `gcc` et lancer un programme C.
- [ ] Je déclare des variables typées et j'utilise les marqueurs de `printf`.
- [ ] J'écris des fonctions et des tableaux.
- [ ] Je comprends `&` (adresse) et `*` (déréférencement), et mon `echange` marche.
- [ ] Quiz 5/5 + preuve en ligne terminée.
