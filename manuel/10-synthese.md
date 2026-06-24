# Chapitre 10 — Tout réunir

## La cryptographie : le coffre-fort du numérique

Comment envoyer un mot de passe sur Internet sans que quelqu'un puisse le lire au passage ? Comment un site stocke-t-il tes identifiants sans pouvoir les révéler, même s'il se fait pirater ? La réponse tient en un mot : la **cryptographie**.

Deux idées à ne surtout pas confondre :

**Le chiffrement** rend un message illisible, puis lisible à nouveau grâce à une **clé**. C'est **réversible**. Il y a deux saveurs : le chiffrement **symétrique** (la même clé pour fermer et ouvrir, comme une serrure classique — rapide, ex. AES) et le chiffrement **asymétrique** (une clé publique pour fermer, une clé privée pour ouvrir — c'est ce qui sécurise tout le web via HTTPS, ex. RSA).

**Le hachage**, lui, est **irréversible** : il transforme une donnée en une **empreinte** unique de taille fixe, impossible à inverser. C'est ce que fait le petit script `verifie.sh` que tu utilises depuis la semaine 1 ! On stocke les mots de passe **hachés** : même volé, un hash ne révèle pas le mot de passe d'origine. On ne le « déchiffre » jamais — on recompare des empreintes.

> À retenir : chiffrer, c'est cacher puis révéler (réversible, avec une clé). Hacher, c'est transformer en empreinte unique et définitive (irréversible). Les deux protègent tes données, mais pas de la même façon.

## Le droit : coder dans les règles

Un professionnel de l'informatique ne manipule pas les données n'importe comment. Le **RGPD**, la loi européenne, encadre l'usage des **données personnelles** (tout ce qui identifie une personne). Ses principes : demander le **consentement**, ne collecter que le **nécessaire**, dire **pourquoi**, respecter les **droits** des personnes (consulter, corriger, effacer leurs données), et les **protéger**.

Ce n'est pas un détail : les amendes se comptent en millions. Et cela rejoint la règle d'or de tout ce programme — celle de l'**article 323-1** du Code pénal : on n'accède jamais à un système sans autorisation. Le bon professionnel connaît la technique **et** la ligne jaune.

## L'automatisation et l'IA : la boîte à outils moderne

Ton programme mentionne aussi des outils d'**automatisation** (comme **N8N**, qui relie des services entre eux par blocs, sans coder) et la **gestion d'agents IA**. Tu n'as pas à en devenir expert maintenant : retiens simplement que l'IA et l'automatisation font désormais partie du quotidien du développeur et de l'analyste en sécurité. Savoir les faire travailler pour toi est un atout.

## Le projet final : la preuve par l'exemple

Tout ce que tu as appris ne vaut que si tu sais l'**assembler**. C'est le sens du projet **fullstack** final : une application web complète qui réunit l'interface (semaine 5), la logique serveur (semaine 6), la base de données (semaine 7), une connexion sécurisée avec mots de passe **hachés** (semaines 6 et 10), le tout versionné avec **Git** (semaine 1) et déployable sur ton **serveur** (semaine 9).

Une application comme celle-là, propre et publiée sur ton GitHub, c'est la **meilleure preuve** que tu es prêt — bien plus parlante qu'une ligne sur un CV.

> À retenir : « fullstack » veut dire toute la pile, du visible au caché. Ton projet final prouve que tu sais faire dialoguer interface, serveur et base de données — en sécurisant les données.

## Le mot de la fin

Alexandre, arrivé ici, tu as parcouru un chemin énorme : le terminal, deux langages de programmation, le web de bout en bout, les bases de données, les réseaux, les serveurs, la sécurité des données. Tu n'arrives pas en Bachelor en spectateur : tu arrives **avec une avance considérable**, et l'habitude de **pratiquer**.

Le « premier sang » est versé. Le vrai combat — tes études, tes projets, ta carrière — commence maintenant. Et tu es prêt.

## Ce qu'il faut retenir de ce chapitre

- Chiffrement (réversible, avec clé : symétrique/asymétrique) ≠ hachage (irréversible, empreinte).
- Le RGPD encadre les données personnelles ; le cadre légal fait partie du métier.
- Automatisation et IA sont des outils modernes à connaître.
- Le projet fullstack réunit toutes les briques du programme : c'est ta preuve d'être prêt.

Au cahier de la **semaine 10**, tu construis ton application finale sécurisée. Le dernier badge t'attend. Va le chercher. 🎖️
