# Chapitre 8 — Comment les machines se parlent

## Une lettre qui voyage

Quand tu envoies un message d'un ordinateur à un autre — à l'autre bout du monde — comment fait-il pour arriver, intact, à la bonne machine ? C'est tout le sujet des **réseaux**, un pilier de ta formation (le cursus **Cisco CCNA** y est dédié).

L'analogie qui éclaire tout : envoyer une lettre. Tu écris le texte, tu le mets dans une enveloppe, tu inscris l'adresse, la poste l'achemine de centre de tri en centre de tri, et le facteur la dépose. Un message informatique fait exactement ce voyage, en traversant des **couches** successives.

## Le modèle OSI : sept étages

Pour organiser ce voyage, on a défini un modèle en **7 couches**, le modèle **OSI**. Chaque couche a un rôle précis et ne s'occupe que du sien : la plus haute, c'est l'application (ce que tu vois) ; la plus basse, c'est le signal physique (le câble, le Wi-Fi). Entre les deux, des couches gèrent l'adressage, le routage, la fiabilité.

Tu n'as pas besoin de tout retenir par cœur tout de suite, mais deux couches sont reines : la couche **réseau** (l'**IP**, qui gère les adresses) et la couche **transport** (**TCP** et **UDP**, qui gèrent la livraison). TCP, c'est le courrier recommandé (livraison garantie) ; UDP, c'est la carte postale (rapide, sans garantie).

> À retenir : le modèle OSI décrit en 7 couches le voyage d'un message. Retiens surtout IP (les adresses) et TCP/UDP (la livraison fiable ou rapide).

## L'adresse IP : l'adresse postale des machines

Chaque machine a une **adresse IP** : quatre nombres de 0 à 255 (en IPv4), comme `192.168.1.10`. C'est son adresse postale sur le réseau. Une adresse spéciale, `127.0.0.1` (« localhost »), désigne **toujours ta propre machine** — pratique pour tester.

L'adresse se divise en deux : une partie qui désigne le **réseau** (le quartier) et une partie qui désigne la **machine** (le numéro de maison). C'est le **masque de sous-réseau** qui indique où passe la frontière.

## Le subnetting : découper intelligemment

Une grande entreprise ne met pas toutes ses machines dans un seul gros réseau : elle le **découpe** en **sous-réseaux** (un par service, par exemple), pour mieux organiser et sécuriser. C'est le *subnetting*, un grand classique des exercices Cisco. Et devine sur quoi ça repose ? Sur le **binaire** que tu as vu dès la semaine 1. Une adresse IP n'est qu'une suite de bits ; découper, c'est jouer avec ces bits. Le Coin Maths du programme prend ici tout son sens.

## Les services qui font tourner le réseau

Trois acteurs invisibles te facilitent la vie :
- Le **DHCP** te donne automatiquement une adresse IP quand tu te connectes (l'hôtesse qui t'attribue ta chambre).
- Le **DNS** traduit les noms (`google.com`) en adresses IP (l'annuaire téléphonique) — sans lui, il faudrait retenir des suites de chiffres.
- Les **ports** identifient un service précis sur une machine (l'appartement dans l'immeuble) : 80 pour le web, 443 pour le web sécurisé, 22 pour l'administration à distance.

> À retenir : une adresse IP situe une machine ; le masque sépare réseau et machines ; DHCP attribue les IP, DNS traduit les noms, les ports désignent les services.

## Ce qu'il faut retenir de ce chapitre

- Un message voyage en traversant des couches (modèle OSI, 7 couches) ; IP et TCP/UDP sont les plus importantes.
- L'adresse IP situe chaque machine ; `127.0.0.1` = soi-même.
- Le subnetting découpe un réseau en sous-réseaux, et repose sur le binaire.
- DHCP (attribue les IP), DNS (traduit les noms) et les ports (désignent les services) font tourner le tout.

Au cahier de la **semaine 8**, tu construis un vrai petit réseau dans un simulateur et tu conçois le plan d'adressage d'une entreprise. Tu commences à penser comme un administrateur réseau.
