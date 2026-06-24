# 🗓️ Semaine 8 — Les bases du réseau (OSI, IP, sous-réseaux — CCNA 1)

[⬅️ Semaine 7](semaine-07-bdd-sql.md) · [Retour au sommaire](README.md) · [Semaine 9 ➡️](semaine-09-systemes-virtu.md)

### 🎯 Objectifs de la semaine
- Comprendre comment les ordinateurs **communiquent** : le modèle **OSI** et **TCP/IP**.
- Maîtriser les **adresses IP**, le **masque** et les **sous-réseaux**.
- Connaître les protocoles clés : **DHCP**, **DNS**, **TCP/UDP**, ports.
- Poser les bases du **CCNA 1** (le cursus Cisco enseigné en 1re année).

> 📖 À lire en parallèle : **chapitre 8 du manuel** (« Comment les machines se parlent »).

---

## 📘 Cours 8.1 — Le modèle OSI : 7 couches

Pour qu'un message voyage d'un ordinateur à l'autre, il traverse **7 couches**, chacune avec un rôle. C'est comme envoyer une lettre : tu écris le texte (contenu), tu la mets dans une enveloppe (adresse), la poste la transporte (routage)…

| # | Couche | Rôle | Exemple |
|---|---|---|---|
| 7 | Application | ce que voit l'utilisateur | HTTP, mail |
| 6 | Présentation | format, chiffrement | TLS |
| 5 | Session | maintenir le dialogue | — |
| 4 | Transport | fiabilité, ports | **TCP**, **UDP** |
| 3 | Réseau | adressage, routage | **IP** |
| 2 | Liaison | de machine à machine sur le réseau local | Ethernet, MAC |
| 1 | Physique | les signaux (câble, ondes) | Wi-Fi, fibre |

En pratique, on utilise souvent le modèle **TCP/IP** (4 couches), plus simple, mais l'OSI reste **la** référence des cours.

> À retenir : le modèle OSI a **7 couches**. Retiens au moins TCP/UDP (couche 4, transport) et IP (couche 3, réseau) : ce sont celles qu'on manipule tout le temps.

---

## 📘 Cours 8.2 — L'adresse IP

Chaque machine sur un réseau a une **adresse IP**, comme une adresse postale. En **IPv4**, c'est 4 nombres de 0 à 255 séparés par des points : `192.168.1.10`. Au total **32 bits** (4 octets × 8 bits).

- `127.0.0.1` est l'adresse de **loopback** : elle désigne toujours **ta propre machine** (« localhost »).
- Les plages **privées** (réseaux locaux) : `192.168.x.x`, `10.x.x.x`, `172.16-31.x.x`.
- **IPv6** existe (adresses bien plus longues) pour pallier le manque d'adresses IPv4.

Commandes utiles : `ip a` (Linux) ou `ipconfig` (Windows), `ping 8.8.8.8` (teste la connexion), `traceroute` (le chemin suivi).

---

## 📘 Cours 8.3 — Masque et sous-réseaux

Une IP a deux parties : la **partie réseau** (le quartier) et la **partie machine** (le numéro de maison). Le **masque de sous-réseau** dit où est la séparation. Exemple :

- IP `192.168.1.10` avec masque `255.255.255.0` (noté `/24`).
- Le `/24` signifie : les **24 premiers bits** = le réseau (`192.168.1`), les 8 derniers = les machines (`.0` à `.255`).
- Donc ce réseau peut contenir **254 machines** utilisables (`.1` à `.254` ; `.0` = le réseau, `.255` = le broadcast).

**Découper en sous-réseaux** (*subnetting*), c'est diviser un grand réseau en plus petits, pour mieux organiser et sécuriser. C'est un classique des exercices CCNA — et ça repose sur le **binaire** (revois la semaine 1 !).

---

## 📘 Cours 8.4 — DHCP, DNS, ports

| Service | Rôle | Analogie |
|---|---|---|
| **DHCP** | attribue **automatiquement** une IP à une machine qui se connecte | l'hôtesse qui te donne ton numéro de chambre |
| **DNS** | traduit un **nom** (`google.com`) en **adresse IP** | l'annuaire téléphonique |
| **Ports** | numéro identifiant un service sur une machine | le numéro d'appartement dans l'immeuble (l'IP) |

Ports à connaître : **80** (HTTP), **443** (HTTPS), **22** (SSH), **53** (DNS). **TCP** garantit la livraison (comme un recommandé), **UDP** est plus rapide mais sans garantie (comme une carte postale).

---

## 🧮 Coin Maths — le binaire, enfin utile pour de vrai

Une adresse IP, c'est **4 octets** = 32 bits. `192` en binaire = `11000000`. Le masque `/24` veut dire « 24 bits à 1 » : `11111111.11111111.11111111.00000000`. Tout le *subnetting* se calcule en binaire : combien de bits pour le réseau, combien pour les machines, donc combien d'adresses. C'est l'aboutissement du Coin Maths des semaines 1 et 4.

> Exemple : un `/26` = 26 bits réseau → il reste 6 bits machines → 2⁶ = 64 adresses (dont 62 utilisables).

---

## 🇬🇧 English Corner

| Anglais | Français |
|---|---|
| *network* / *layer* | réseau / couche |
| *to route* / *router* | router / routeur |
| *subnet* / *subnet mask* | sous-réseau / masque de sous-réseau |
| *packet* | paquet |
| *default gateway* | passerelle par défaut |

**Mini-tâche** : tout le CCNA et la doc Cisco sont en anglais. Cherche la différence entre *switch* et *router* et résume-la en une phrase.

---

## 🎯 Exercices Semaine 8

### Exercice 8.1 — Explore ton réseau
1. Trouve ton IP locale (`ip a`), ton masque, et ta **passerelle** (`ip route`).
2. `ping 8.8.8.8` puis `ping google.com` : quelle différence ? (le second utilise le DNS).
3. `nslookup google.com` : quelles IP obtiens-tu ?

### Exercice 8.2 — Subnetting sur papier
Pour le réseau `192.168.10.0/24` : combien de machines ? Quelle est l'adresse de broadcast ? Découpe-le en 4 sous-réseaux : donne le masque et la plage de chacun.

### Exercice 8.3 — Simule un réseau (Packet Tracer)
Installe **Cisco Packet Tracer** (gratuit avec un compte NetAcad). Construis : 2 PC + 1 switch, attribue des IP du même sous-réseau, et fais-les se **pinguer**. Ajoute un routeur pour relier deux sous-réseaux.

### Exercice 8.4 — Mini-projet : plan d'adressage 🗺️
Conçois le plan d'adressage d'une petite entreprise : 3 services (compta, technique, direction), chacun dans son sous-réseau, à partir de `192.168.0.0/24`. Donne pour chaque service : adresse réseau, masque, plage utilisable, broadcast. Schématise.

---

## 🎫 Épreuve de passage — Semaine 8

Badge **🏆 Cartographe des Réseaux** quand les **3** niveaux sont réussis.

### 1. 🧠 Quiz auto-corrigé (5/5)
`./verifie.sh "ta réponse"` (minuscules, sans accents).

| # | Question | SHA-256 de la bonne réponse |
|---|---|---|
| 1 | Combien de couches compte le modèle OSI ? | `7902699be42c8a8e46fbbb4501726517e86b22c56a189f7625a6da49081b2451` |
| 2 | Quel protocole attribue automatiquement une adresse IP (4 lettres) ? | `6f89bddf8582a8d223e132d10c9436e788687f159fbbf5ac36a6eb14d307a3fa` |
| 3 | Quel protocole traduit un nom de domaine en adresse IP (3 lettres) ? | `dd75a9d6fb309c4399fe425cd5f90ff95eba135d6924fb91766ee5d3726b168a` |
| 4 | Combien de bits compte une adresse IPv4 ? | `e29c9c180c6279b0b02abd6a1801c7c04082cf486ec027aa13515e4f3884bb6b` |
| 5 | Quelle adresse IP désigne toujours la machine locale (loopback) ? | `12ca17b49af2289436f303e0166030a21e525d266e209267433801a8fd4071a0` |

### 2. 🚩 Défi du Boss
- Dans Packet Tracer (ou avec deux VM), deux machines de **sous-réseaux différents** communiquent **via un routeur** (ping réussi).
- Ton plan d'adressage des 3 services est correct (réseaux, masques, plages, broadcast).

### 3. 🏆 Preuve en ligne
Commence le cours gratuit **« Networking Basics »** de **Cisco NetAcad** : [netacad.com](https://www.netacad.com/) (gratuit, badge officiel Cisco à la clé — excellent pour ton CV).

> 🆓 **Alternative gratuite et sans compte** : l'entraîneur de subnetting **subnetting.org** ou **subnettingpractice.com** ; la chaîne **« Cisco / réseau »** sur les MOOC francophones.

➡️ **🏆 Badge « Cartographe des Réseaux ».** `./progression.sh done 8 all` → [Semaine 9](semaine-09-systemes-virtu.md) !

---

## ✅ Checklist fin de Semaine 8
- [ ] Je connais les 7 couches OSI et le rôle de TCP/UDP et IP.
- [ ] Je lis une adresse IP, un masque, et je sais ce qu'est la loopback.
- [ ] Je sais découper un réseau en sous-réseaux (subnetting de base).
- [ ] Je connais DHCP, DNS et les ports courants (80, 443, 22, 53).
- [ ] Quiz 5/5 + preuve en ligne terminée.
