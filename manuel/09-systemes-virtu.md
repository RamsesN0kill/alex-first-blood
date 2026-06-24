# Chapitre 9 — Monter ses serveurs

## Un ordinateur dans l'ordinateur

Les sites web, les applications, les services en ligne tournent sur des **serveurs** : des ordinateurs allumés en permanence, quelque part dans un centre de données. Mais acheter une machine physique par service serait ruineux et gâché (un serveur n'est utilisé qu'à une fraction de sa puissance). La solution s'appelle la **virtualisation** : faire tourner **plusieurs ordinateurs simulés** (des **machines virtuelles**, ou VM) sur une seule machine physique.

Le chef d'orchestre s'appelle l'**hyperviseur**. Tu en utilises déjà un pour apprendre (**VirtualBox**) ; en entreprise, on trouve **VMware ESXi** et **Proxmox**, enseignés en cours. C'est exactement la technologie qui fait fonctionner le **cloud** : quand tu loues un serveur chez un hébergeur, c'est presque toujours une VM.

Un superpouvoir des VM : le **snapshot**, une photo de l'état complet de la machine à un instant donné. Tu expérimentes, tu casses tout, et tu restaures la photo en quelques secondes. Un filet de sécurité magique.

> À retenir : une VM est un ordinateur simulé ; l'hyperviseur les fait tourner ; le snapshot fige un état restaurable. C'est le fondement du cloud.

## Administrer à distance, en ligne de commande

Un serveur n'a en général **ni écran ni clavier**. On l'administre **à distance**, par le réseau, via un canal sécurisé appelé **SSH**. Te voilà récompensé d'avoir appris le terminal en semaine 1 : c'est exactement comme ça qu'on pilote un serveur — en tapant des commandes, à distance.

Le quotidien de l'administrateur : installer des services (un serveur web, une base de données), vérifier qu'ils tournent, les redémarrer, gérer les **utilisateurs** et leurs droits, et lire les **logs** (les journaux dans `/var/log/`, qui racontent tout ce qui se passe). Côté Windows, le monde de l'entreprise s'organise autour de **Windows Server** et de l'**Active Directory**, l'annuaire central qui gère tous les comptes et tous les droits d'une organisation.

## Fermer les portes : le durcissement

Un serveur fraîchement installé est une **maison aux portes grandes ouvertes**. Le **durcissement** (*hardening*) consiste à les fermer pour réduire la prise offerte aux attaquants. Les réflexes de base, qui suffisent déjà à écarter l'immense majorité des menaces :
- **mettre à jour** régulièrement (les failles connues sont les plus exploitées) ;
- activer un **pare-feu** et n'ouvrir que les ports strictement nécessaires ;
- sécuriser l'accès **SSH** (pas de connexion directe en administrateur, des clés plutôt que des mots de passe) ;
- appliquer le **moindre privilège** : chacun n'a que les droits dont il a besoin, pas plus.

> À retenir : un serveur se sécurise dès l'installation. Mises à jour, pare-feu, SSH durci et moindre privilège : ces quatre réflexes éliminent déjà l'essentiel du risque.

Et si tu veux aller bien plus loin dans la défense — détecter les intrusions, analyser les attaques, répondre à un incident — c'est tout l'objet de l'autre programme, **« Alex le CyberHero »**. First Blood te donne les fondations système ; CyberHero t'apprend à les défendre.

## Ce qu'il faut retenir de ce chapitre

- La virtualisation fait tourner plusieurs VM sur une machine ; l'hyperviseur les orchestre ; le snapshot sauve la mise.
- On administre un serveur à distance en ligne de commande (SSH) : services, utilisateurs, logs.
- Windows Server + Active Directory gèrent les comptes en entreprise.
- Le durcissement ferme les portes inutiles : mises à jour, pare-feu, SSH, moindre privilège.

Au cahier de la **semaine 9**, tu montes un vrai serveur web dans une VM, tu héberges ton propre site, et tu le durcis. Tu deviens administrateur.
