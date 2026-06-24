# Chapitre 3 — Ranger l'information

## Une variable ne suffit plus

Au chapitre 2, une variable contenait une seule valeur : un âge, un prénom. Mais comment ranger **la liste des courses**, **un carnet de contacts**, **les notes d'une classe** ? Tu ne vas pas créer `note1`, `note2`, `note3`… jusqu'à `note30`. Il te faut des **structures de données** : des boîtes capables de contenir **plusieurs choses**, organisées.

## La liste : une suite ordonnée

La **liste** est la structure la plus courante : une suite de valeurs, dans l'ordre, dans une seule variable. `courses = ["pain", "lait", "œufs"]`. Tu accèdes au premier élément avec `courses[0]` (en informatique, **on compte à partir de zéro** — un réflexe à prendre). Tu peux ajouter (`.append`), enlever, trier, compter (`len`), parcourir avec une boucle `for`.

> À retenir : une liste range plusieurs valeurs ordonnées. On accède aux éléments par leur position (l'indice), en commençant à 0.

## Le dictionnaire : associer une clé à une valeur

Parfois, l'ordre n'a pas d'importance : ce qu'on veut, c'est **retrouver une information par son nom**. C'est le rôle du **dictionnaire**. Comme un vrai dictionnaire associe un mot à sa définition, le dictionnaire Python associe une **clé** à une **valeur** : `eleve = {"nom": "Alex", "age": 18}`. Tu retrouves l'âge avec `eleve["age"]`.

C'est puissant : retrouver une valeur par sa clé est **quasi instantané**, même dans un dictionnaire géant. Là où parcourir une liste d'un million d'éléments prendrait du temps, le dictionnaire répond du tac au tac.

Il existe deux cousins : le **tuple** (une liste qu'on ne peut plus modifier, pour des données fixes) et l'**ensemble** (*set*, une collection sans doublons).

> À retenir : la liste se parcourt par position ; le dictionnaire se consulte par clé. Choisir la bonne structure selon l'usage, c'est déjà bien programmer.

## Les fichiers : se souvenir après l'extinction

Jusqu'ici, dès que ton programme s'arrête, tout est oublié. Pour qu'il **se souvienne** d'une fois sur l'autre, il faut écrire sur le **disque** : dans un **fichier**.

On ouvre un fichier en précisant ce qu'on veut faire : le **lire**, y **écrire** (en écrasant), ou **ajouter** à la fin. La bonne pratique est d'utiliser le bloc `with open(...)`, qui referme automatiquement le fichier quand on a fini — comme on referme le robinet après s'être servi.

Un format très courant pour stocker des données structurées est le **JSON** : du texte lisible qui ressemble exactement aux dictionnaires et listes Python. Python sait le lire et l'écrire en une ligne.

## Quand ça se passe mal : gérer les erreurs

Un utilisateur tape « dix-huit » au lieu de « 18 » ? Le fichier n'existe pas ? Au lieu de planter, un bon programme **anticipe**. Le bloc `try` / `except` te permet de dire : « essaie ceci ; si ça rate, fais cela plutôt ». C'est la différence entre un programme qui crash brutalement et un programme robuste qui garde le contrôle.

## Ce qu'il faut retenir de ce chapitre

- Les structures de données rangent **plusieurs** valeurs : liste (ordonnée), dictionnaire (par clé), tuple (fixe), set (sans doublons).
- On accède à une liste par position, à un dictionnaire par clé.
- Les fichiers permettent de **se souvenir** d'une exécution à l'autre ; le JSON est un format pratique.
- `try`/`except` rend un programme robuste face aux imprévus.

Au cahier de la **semaine 3**, tu construis ton premier programme qui **se souvient** : un gestionnaire de tâches qui sauvegarde tout dans un fichier. Ta première vraie petite application.
