# 🗓️ Semaine 10 — Le grand final : crypto, RGPD & projet fullstack

[⬅️ Semaine 9](semaine-09-systemes-virtu.md) · [Retour au sommaire](README.md)

### 🎯 Objectifs de la semaine
- Comprendre les **fondamentaux de la cryptographie** (chiffrement, hachage).
- Connaître le **RGPD** et le cadre légal du métier.
- Avoir un aperçu de l'**IA et de l'automatisation** (N8N, agents).
- **Réunir tout le programme** dans un projet fullstack final.

> 📖 À lire en parallèle : **chapitre 10 du manuel** (« Tout réunir »).

---

## 📘 Cours 10.1 — La cryptographie en 10 minutes

La **cryptographie** protège les données. Deux familles à ne pas confondre :

**1. Le chiffrement (réversible)** : rendre un message illisible, puis le rendre lisible avec une clé.
- **Symétrique** : la **même clé** chiffre et déchiffre (rapide). Ex. **AES** (une clé AES de **256 bits** est considérée comme très solide). Problème : comment partager la clé sans se la faire voler ?
- **Asymétrique** : une paire de clés, une **publique** (pour chiffrer) et une **privée** (pour déchiffrer). Ex. **RSA**. C'est ce qui sécurise le web (HTTPS).

**2. Le hachage (irréversible)** : transformer une donnée en une **empreinte** de taille fixe, impossible à inverser. Ex. **SHA-256** — *exactement ce que fait `verifie.sh` de ce programme depuis la semaine 1 !* On stocke les mots de passe **hachés**, jamais en clair.

| | Chiffrement | Hachage |
|---|---|---|
| Réversible ? | oui (avec la clé) | **non** |
| Usage | confidentialité (messages, HTTPS) | mots de passe, intégrité |
| Exemples | AES, RSA | SHA-256, bcrypt |

> À retenir : chiffrer = cacher puis révéler (réversible). Hacher = transformer en empreinte unique et irréversible. On ne « déchiffre » jamais un hash : on recompare des empreintes.

---

## 📘 Cours 10.2 — Le RGPD et le cadre légal

Coder, ce n'est pas que technique : c'est aussi **légal**. Le **RGPD** (Règlement Général sur la Protection des Données) encadre, dans toute l'Europe, la façon dont on collecte et traite les **données personnelles** (tout ce qui identifie une personne : nom, email, IP, photo…).

Principes clés :
- **Consentement** : on demande l'accord avant de collecter.
- **Minimisation** : on ne collecte que le strict nécessaire.
- **Finalité** : on dit pourquoi on collecte, et on s'y tient.
- **Droits des personnes** : accès, rectification, effacement (« droit à l'oubli »).
- **Sécurité** : on protège les données (chiffrement, accès limité).

> 💡 Le non-respect du RGPD coûte **très cher** (jusqu'à 4 % du chiffre d'affaires mondial). Pour un futur pro de la cyber, le connaître n'est pas optionnel. Rappel aussi de l'**article 323-1** du Code pénal (accès frauduleux) — la règle d'or de ce programme.

---

## 📘 Cours 10.3 — Un aperçu de l'IA & de l'automatisation

Le programme mentionne **N8N** (un outil d'**automatisation** : relier des services entre eux sans coder, par blocs) et la **gestion d'agents IA**. L'idée : faire dialoguer une IA (comme Claude) avec des outils pour automatiser des tâches. Tu n'as pas à devenir expert maintenant — juste à savoir que **l'automatisation et l'IA font désormais partie de la boîte à outils du développeur**, y compris en cybersécurité (tri d'alertes, analyse de logs…).

---

## 📘 Cours 10.4 — Le projet fullstack : tout réunir

« Fullstack » = **toute la pile**, du front au back à la base. Ton projet final combine **tout ce que tu as appris** :

- **HTML/CSS/JS** (S5) pour l'interface,
- **PHP** (S6) pour la logique serveur,
- **SQL** (S7) pour stocker,
- **sessions + hachage** (S6, S10) pour une connexion sécurisée,
- **Git/GitHub** (S1) pour versionner,
- le tout pouvant tourner sur **ton serveur** (S9).

---

## 🧮 Coin Maths — l'arithmétique modulaire (le cœur de la crypto)

La cryptographie moderne repose sur l'**arithmétique modulaire** : les calculs « avec reste », comme une horloge (23 h + 3 h = 2 h, soit `(23+3) mod 24`). RSA utilise des **nombres premiers** énormes et l'opération `modulo` : il est facile de multiplier deux grands nombres premiers, mais quasi impossible de retrouver les facteurs du résultat. **Toute la sécurité d'Internet tient sur cette asymétrie mathématique.** Le `%` que tu utilises depuis la semaine 2, c'est ça.

---

## 🇬🇧 English Corner

| Anglais | Français |
|---|---|
| *encryption* / *to encrypt* | chiffrement / chiffrer |
| *hashing* / *hash* | hachage / empreinte |
| *key* (public / private) | clé (publique / privée) |
| *data privacy* | protection des données |
| *fullstack* | de bout en bout (front + back) |

**Mini-tâche** : cherche ce que signifie **HTTPS** (le « S ») et quel mécanisme cryptographique le rend possible (indice : cours 10.1).

---

## 🎯 Exercices Semaine 10

### Exercice 10.1 — Hachage en pratique
En Python ou PHP, hache un mot de passe en SHA-256, puis avec **bcrypt** (le bon choix pour les mots de passe). Compare deux empreintes du même mot : identiques ? Avec bcrypt ?

### Exercice 10.2 — Chiffrement symétrique
Avec une bibliothèque (`cryptography` en Python), chiffre puis déchiffre un message avec une clé. Observe le message chiffré (illisible) et retrouvé.

### Exercice 10.3 — Mini-audit RGPD
Prends un site que tu utilises : quelles données personnelles collecte-t-il ? Y a-t-il une bannière de consentement ? Une politique de confidentialité ? Rédige une mini-analyse d'une page.

### Exercice 10.4 — 🎖️ PROJET FINAL : ton appli fullstack
Construis une **petite application web complète et sécurisée** au choix (mini-réseau social, gestionnaire de notes en ligne, blog, todo-list partagée…) :
1. **Interface** HTML/CSS/JS soignée.
2. **Back-end PHP** avec logique métier.
3. **Base de données** (≥ 2 tables reliées), requêtes préparées (PDO).
4. **Connexion utilisateur** : inscription + login, mots de passe **hachés** (jamais en clair), sessions.
5. **Git** : historique propre, publié sur GitHub avec un beau `README` (captures, instructions).
6. **Bonus** : déploie-la sur ta VM serveur (S9) et écris une courte note sur le respect du RGPD (quelles données, pourquoi).

C'est **ta preuve** que tu es prêt. Un projet comme ça dans ton GitHub vaut de l'or pour ton dossier et tes stages.

---

## 🎫 Épreuve de passage — Semaine 10 (FINALE)

Badge 🎖️ **Alex First Blood — Opérationnel** quand les **3** niveaux sont réussis.

### 1. 🧠 Quiz auto-corrigé (5/5)
`./verifie.sh "ta réponse"` (minuscules, sans accents).

| # | Question | SHA-256 de la bonne réponse |
|---|---|---|
| 1 | Comment qualifie-t-on un chiffrement utilisant la même clé pour chiffrer et déchiffrer (un mot) ? | `595c31f9d8d8fd9255f3a2dacde99beaff176a8003d79f077c9ce0f727de02e5` |
| 2 | Comment appelle-t-on la transformation irréversible d'un mot de passe en empreinte (un mot anglais) ? | `d04b98f48e8f8bcc15c6ae5ac050801cd6dcfd428fb5f9e65c4e16e7807340fa` |
| 3 | Quel type de données le RGPD protège-t-il (deux mots) ? | `42c9cfd153f9930ab6a83713c3cdba19b1ace97832ddee0e4fa633dd23d28cf7` |
| 4 | Combien de bits compte une clé AES considérée comme très solide ? | `51e8ea280b44e16934d4d611901f3d3afc41789840acdff81942c2f65009cd52` |
| 5 | Quel algorithme de chiffrement asymétrique porte les initiales de ses 3 inventeurs (3 lettres) ? | `f5f69168bba3cfa1e2a80dff839b48db36df36fa876c1cd9d7d508f3ab308744` |

### 2. 🚩 Défi du Boss (le projet final)
- Ton appli fullstack fonctionne : interface + PHP + base reliée + **connexion avec mots de passe hachés** + sessions.
- Elle est publiée sur **GitHub** avec un `README` clair.

### 3. 🏆 Preuve en ligne
Termine le module **« Information Security »** ou **« Scientific Computing / Cryptography »** de **freeCodeCamp**, OU la room **« Cryptography Basics »** de **TryHackMe**.

> 🆓 **Alternative gratuite** : les challenges **Cryptanalyse** de **Root-Me** (en français) ; ou le cours **« Crypto 101 »** (gratuit, en ligne).

➡️ Les 3 réussis ? **🎖️ Badge final « Alex First Blood — Opérationnel » !** `./progression.sh done 10 all`

---

## 🏁 Mot de la fin

Alexandre, si tu lis ces lignes après avoir débloqué les 10 badges : **tu n'es plus un débutant.** Tu sais te déplacer dans Linux, coder en Python et en C, monter un site fullstack, calculer un sous-réseau, administrer un serveur et sécuriser des données. Tu arrives en Bachelor avec une **longueur d'avance énorme**.

Le « premier sang » est versé. Maintenant, le vrai combat commence — et tu es prêt. Et si tu veux pousser côté offensif/défensif, tu sais où aller : **« Alex le CyberHero »** t'attend. 🥷

*Bon courage pour la suite. Tu vas tout déchirer. — First Blood*

---

## ✅ Checklist fin de Semaine 10
- [ ] Je distingue chiffrement (symétrique/asymétrique) et hachage.
- [ ] Je connais les principes du RGPD et le cadre légal.
- [ ] J'ai un aperçu de l'automatisation et de l'IA (N8N, agents).
- [ ] Mon projet fullstack sécurisé est terminé et publié sur GitHub.
- [ ] Quiz 5/5 + preuve en ligne terminée. **🎖️ Programme bouclé !**
