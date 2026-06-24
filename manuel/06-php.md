# Chapitre 6 — Le web côté caché

## Le problème du front tout seul

Au chapitre 5, tout se passait dans le navigateur. Mais imagine un site qui affiche **ton compte bancaire**. Les données ne sont pas dans la page (sinon n'importe qui les verrait dans le code !) : elles arrivent d'un **serveur**, un ordinateur distant qui vérifie qui tu es, va chercher tes infos, et te renvoie une page sur mesure. Ce travail invisible, c'est le **back-end**.

Le langage qu'on apprend pour ça est **PHP**. Il est partout : WordPress, Wikipédia, une grande part du web tourne grâce à lui. Le principe : **PHP fabrique le HTML sur le serveur, puis l'envoie au navigateur.** L'utilisateur reçoit une page finie ; il ne voit jamais ton code PHP. C'est ça, la grande différence avec JavaScript.

> À retenir : le front (HTML/CSS/JS) s'exécute chez l'utilisateur ; le back (PHP) s'exécute sur le serveur. Le PHP construit la page **avant** de l'envoyer, et garde le code caché.

## PHP ressemble à ce que tu connais déjà

Bonne nouvelle : après Python et le C, le PHP te paraîtra familier. On y retrouve les variables, les conditions `if`, les boucles `for` et `while`, les fonctions, les tableaux. Trois habitudes à prendre : **toute variable commence par `$`** (`$prenom`), chaque instruction finit par `;`, et les blocs sont délimités par des accolades `{}` (pas par l'indentation comme Python).

Le code PHP s'insère dans le HTML entre les balises `<?php ... ?>`, ce qui permet de mélanger logique et affichage.

## Le cœur du métier : les formulaires

À quoi sert vraiment le back-end ? À **traiter ce que l'utilisateur envoie**. Un formulaire (champ de saisie, bouton « envoyer ») transmet ses données au serveur, qui les récupère et agit : enregistrer une inscription, vérifier un mot de passe, poster un message.

Et ici, une leçon capitale, valable pour toute ta carrière : **ne fais JAMAIS confiance à ce que l'utilisateur envoie.** Un visiteur malveillant peut envoyer n'importe quoi pour piéger ton site (c'est la base des attaques web que tu as vues dans CyberHero). On **valide** et on **nettoie** toujours les données reçues avant de les utiliser ou de les afficher.

> À retenir : recevoir et traiter les données d'un formulaire, c'est le cœur du back-end. Et la règle d'or : toute donnée venant de l'utilisateur est suspecte tant qu'on ne l'a pas vérifiée.

## Se souvenir de l'utilisateur : les sessions

Le web a une particularité étrange : il **oublie**. Chaque page est, par défaut, indépendante de la précédente. Alors comment un site sait-il que tu es resté connecté en passant d'une page à l'autre ? Grâce aux **sessions** : un petit espace mémoire côté serveur qui retient « cet utilisateur est connecté en tant qu'Alex ». C'est le mécanisme derrière **tout système de connexion**. On le combinera, en semaine 7, avec une base de données pour stocker les vrais comptes.

## Ce qu'il faut retenir de ce chapitre

- Le back-end (PHP) tourne sur le serveur et fabrique les pages que le navigateur reçoit.
- PHP ressemble aux langages déjà vus : `$` devant les variables, `;`, accolades.
- Traiter les formulaires est son rôle central ; on ne fait jamais confiance aux données reçues.
- Les sessions permettent de « se souvenir » d'un utilisateur d'une page à l'autre (base de la connexion).

Au cahier de la **semaine 6**, tu montes une page de connexion avec sessions. Tu touches au cœur de toute application web sérieuse.
