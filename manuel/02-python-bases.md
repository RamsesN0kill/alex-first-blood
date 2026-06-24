# Chapitre 2 — Python, ton premier langage

## Programmer, c'est écrire des recettes

Tu sais déjà donner des ordres à la machine (le terminal, chapitre 1). Programmer, c'est aller plus loin : écrire une **suite d'instructions** que l'ordinateur exécutera tout seul. On appelle ça un **algorithme** — un mot impressionnant pour une idée simple : *une recette de cuisine*.

Faire des pâtes : *faire bouillir l'eau → saler → plonger les pâtes → attendre 10 minutes → égoutter*. C'est précis, ordonné, sans ambiguïté. Un programme, c'est pareil, mais écrit dans un langage que la machine comprend.

On commence par **Python**, et ce n'est pas un hasard : il est **lisible** (ça ressemble presque à de l'anglais), **pardonnant** pour les débutants, et c'est **le langage enseigné en première année**. Ce que tu apprends ici, tu le retrouveras en cours dès les premières semaines.

> À retenir : un algorithme est une suite d'étapes précises pour résoudre un problème. Un langage de programmation (comme Python) sert à écrire cet algorithme pour que la machine l'exécute.

## Les variables : des boîtes étiquetées

Une **variable**, c'est une boîte avec une étiquette, dans laquelle tu ranges une valeur. Tu écris `age = 18`, et désormais le mot `age` contient `18`. Tu peux le réutiliser, le modifier, le combiner.

Les valeurs ont un **type** : un nombre entier (`int`), un nombre à virgule (`float`), du texte (`str`), ou un vrai/faux (`bool`). Le type, c'est la **nature** de ce qu'il y a dans la boîte — et ça compte, car on n'additionne pas du texte comme des nombres.

## Faire des choix : les conditions

Un programme intéressant **réagit**. « Si la note est au-dessus de 10, c'est validé, sinon c'est à refaire. » En Python : `if`, `elif` (sinon si), `else` (sinon). 

Un détail crucial de Python : l'**indentation**. Les espaces en début de ligne ne sont pas décoratifs — ils disent ce qui est « à l'intérieur » du `if`. Décaler le texte, c'est dire à Python « ceci appartient au bloc du dessus ». C'est déroutant au début, puis ça devient une seconde nature (et ça force à écrire du code bien rangé).

> À retenir : avec `if`/`elif`/`else`, ton programme prend des décisions. En Python, l'indentation (les espaces à gauche) délimite les blocs : ce n'est pas optionnel.

## Répéter : les boucles

L'ordinateur ne se fatigue jamais : il adore répéter. C'est le rôle des **boucles**. La boucle `for` répète un nombre **connu** de fois (« pour chaque élément de cette liste… »). La boucle `while` répète **tant qu'**une condition reste vraie (« tant que le joueur n'a pas deviné… »).

Attention au piège classique : si la condition d'un `while` ne devient **jamais** fausse, la boucle tourne à l'infini et le programme se fige. Vérifie toujours qu'il y a une porte de sortie.

## Ranger le code : les fonctions

Quand tu fais souvent la même chose, tu ne réécris pas le code à chaque fois : tu en fais une **fonction**, un bloc nommé que tu peux appeler à volonté. `def aire(l, h): return l * h` définit une fonction « aire » ; ensuite `aire(4, 3)` te donne `12`, autant de fois que tu veux.

C'est la règle d'or du code propre : **si tu copies-colles trois fois le même bout de code, c'est qu'il te faut une fonction.** Un programme bien fait, c'est un assemblage de petites fonctions claires, chacune faisant une seule chose.

## Ce qu'il faut retenir de ce chapitre

- Un programme est une recette : une suite d'instructions précises.
- Les variables rangent des valeurs ; chaque valeur a un type (`int`, `float`, `str`, `bool`).
- `if`/`elif`/`else` font des choix ; l'indentation délimite les blocs.
- `for` et `while` répètent ; gare à la boucle infinie.
- Les fonctions (`def`) rangent et réutilisent le code.

Direction le cahier de la **semaine 2** : tu vas coder ton premier vrai jeu, le « nombre mystère ». Le moment où programmer devient amusant.
