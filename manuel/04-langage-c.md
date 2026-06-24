# Chapitre 4 — Sous le capot : le C

## Pourquoi quitter le confort de Python ?

Python est merveilleux : il te cache tout ce qui est compliqué. Mais justement — pour devenir un pro, il faut **soulever le capot** et voir comment la machine fonctionne vraiment. C'est le rôle du langage **C**.

Le C, c'est le grand-père des langages modernes. Linux est écrit en C. Windows, en grande partie. Python lui-même est écrit en C ! Apprendre le C, ce n'est pas apprendre un langage de plus : c'est **comprendre l'informatique de l'intérieur** — la mémoire, la vitesse, ce qui se passe vraiment quand un programme tourne.

> À retenir : Python te protège, le C t'expose. C'est plus exigeant, mais c'est en C qu'on comprend comment marche réellement un ordinateur.

## Compilé vs interprété

Voici une différence fondamentale. Python est **interprété** : un programme (l'interpréteur) lit ton code ligne par ligne et l'exécute à la volée. Le C est **compilé** : avant de pouvoir lancer ton programme, tu dois le **traduire** entièrement en langage machine (du binaire) avec un outil appelé **compilateur** (sous Linux, c'est `gcc`).

L'analogie : Python, c'est un interprète qui traduit une conversation en direct, phrase par phrase. Le C, c'est faire traduire tout un livre à l'avance — c'est plus de travail au départ, mais ensuite la lecture est ultra-rapide. C'est pour ça que les programmes en C sont **beaucoup plus rapides**.

## Tout est plus précis (et plus strict)

En C, tu dois **tout déclarer** : le type de chaque variable, et même la taille qu'elle occupe en mémoire. Un `int` prend un nombre fixe d'octets, un `char` (un caractère) en prend un seul. Rien n'est automatique. Le compilateur est sévère : la moindre erreur de type ou de point-virgule oublié, et il refuse de compiler. Ça paraît pénible… mais c'est une **excellente école de rigueur**.

## Le grand morceau : les pointeurs

Voici LE concept que tout le monde redoute, et qui fait toute la beauté du C. Pour le comprendre, une image : la mémoire de l'ordinateur est une **immense rue de petites maisons**, chacune avec une **adresse**. Quand tu crées une variable, elle est rangée dans une de ces maisons.

Un **pointeur**, c'est une variable spéciale qui ne contient pas une valeur… mais l'**adresse** d'une autre variable. Au lieu de contenir « 18 », il contient « la valeur 18 se trouve à la maison numéro 7482 ».

Deux symboles vont avec :
- `&age` veut dire « l'**adresse de** la variable age » (où elle habite).
- `*p` veut dire « la **valeur qui se trouve à** l'adresse contenue dans p » (ce qu'il y a dans la maison).

Pourquoi c'est génial ? Parce qu'avec un pointeur, une fonction peut **modifier directement** une variable qui vit ailleurs, partager de gros volumes de données sans les recopier, et construire des structures complexes. C'est aussi la source des bugs les plus célèbres (et de failles de sécurité entières). Le maîtriser te place très au-dessus du débutant moyen.

> À retenir : un pointeur ne contient pas une valeur, mais **l'adresse où trouver** la valeur. `&` donne l'adresse, `*` donne le contenu à cette adresse. Dessine des cases mémoire sur papier — c'est comme ça que ça « fait tilt ».

## Ce qu'il faut retenir de ce chapitre

- Le C expose la machine : mémoire, types de taille fixe, rigueur.
- Compilé (C, traduit avant par `gcc`) ≠ interprété (Python, lu à la volée).
- Un pointeur stocke une **adresse** ; `&` = adresse de, `*` = contenu à cette adresse.
- C'est le concept le plus difficile et le plus formateur de ta première année.

Au cahier de la **semaine 4**, tu écriras le programme qui échange deux variables grâce aux pointeurs — le petit exercice qui fait enfin « tilt ».
