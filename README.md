# 🩸 Alex First Blood — Ta prépa avant le Bachelor Cybersécurité

### Programme d'entraînement intensif — 10 semaines

*Spécialement préparé pour toi, **Alexandre**, avant ton entrée en **Bachelor 1 Cybersécurité, IA & Dév** en septembre. 🎯*

> *« Premier sang. » C'est l'entraînement avant le vrai combat : on te met en jambes sur TOUTES les bases du métier pour que tu débarques opérationnel.* 🥷💻

---

## 🎤 Introduction : on prend de l'avance

Salut **Alexandre** ! 👋

Tu connais déjà le programme **« Alex le CyberHero »** : c'était l'entraînement **offensif** (attaquer pour comprendre, hacking éthique). **« First Blood »**, c'est différent et **complémentaire** : ici on bâtit les **fondations** sur lesquelles repose toute ta première année.

Parce que ta 1re année de Bachelor, ce n'est pas que de la sécurité : c'est du **développement** (Python, C, web, PHP), des **bases de données**, du **réseau**, des **systèmes**. Tout ça, tu seras **noté dessus dès le premier mois**. L'objectif de First Blood : que pendant que les autres découvrent `ls`, **toi tu codes déjà, tu montes des bases de données et tu calcules des sous-réseaux**.

**Comment ça marche ?**

- **10 semaines**, une thématique par semaine, **un fichier par semaine**.
- Chaque semaine = **Cours** 📘 + **Exercices** 🎯 + **Épreuve de passage** 🎫 + **Badge** 🏆.
- Deux rubriques récurrentes chaque semaine : **🇬🇧 English Corner** (le vocabulaire tech, c'est de l'anglais) et **🧮 Coin Maths** (juste ce qu'il faut, au bon moment).
- Compte **~8 à 12 h par semaine**. Tu peux étaler ou condenser, mais **ne saute pas la pratique** : 70 % de ce que tu retiendras vient des exercices (et en dev, ça se vérifie tout de suite : ton code marche ou il marche pas 😄).

> 📖 **Le manuel d'apprentissage (PDF)** : pour comprendre la théorie en mots simples, avec des analogies → **[Manuel-Alex-First-Blood.pdf](Manuel-Alex-First-Blood.pdf)**. C'est ton **livre de cours** ; les fichiers de semaine ci-dessous sont ton **cahier d'exercices**. On lit un chapitre du manuel, puis on pratique dans le cahier.

---

## 🗓️ Le programme

| Semaine | Thème | Fichier |
|---|---|---|
| 1 | Linux, terminal & Git (le terrain de jeu du dev) | [semaine-01-linux-git.md](semaine-01-linux-git.md) |
| 2 | Python — algorithmique & bases | [semaine-02-python-bases.md](semaine-02-python-bases.md) |
| 3 | Python — structures de données & mini-projet | [semaine-03-python-structures.md](semaine-03-python-structures.md) |
| 4 | Le langage C — proche de la machine | [semaine-04-langage-c.md](semaine-04-langage-c.md) |
| 5 | Le web côté front : HTML5, CSS3, JavaScript | [semaine-05-web-front.md](semaine-05-web-front.md) |
| 6 | Le web côté back : PHP 8 | [semaine-06-php.md](semaine-06-php.md) |
| 7 | Bases de données : SQL & modélisation UML | [semaine-07-bdd-sql.md](semaine-07-bdd-sql.md) |
| 8 | Les bases du réseau (OSI, IP, sous-réseaux — CCNA 1) | [semaine-08-reseaux.md](semaine-08-reseaux.md) |
| 9 | Systèmes & virtualisation (serveurs, VM) | [semaine-09-systemes-virtu.md](semaine-09-systemes-virtu.md) |
| 10 | Le grand final : crypto, RGPD & projet fullstack | [semaine-10-synthese.md](semaine-10-synthese.md) |
| 📎 | Annexes (glossaire, plateformes, ressources, bonus) | [annexes.md](annexes.md) |
| 📊 | **Suivi de ma progression** (checklist + tableau de bord) | [PROGRESSION.md](PROGRESSION.md) |

---

## 📊 Suivre ta progression

Deux options, au choix :
- **Checklist GitHub** : ouvre [PROGRESSION.md](PROGRESSION.md) et coche les cases au fur et à mesure.
- **Tableau de bord terminal** : lance `./progression.sh` pour un dashboard avec barre de progression et badges qui se débloquent.

```bash
chmod +x progression.sh        # une seule fois
./progression.sh               # voir le tableau de bord
./progression.sh done 1 all    # valider toute la semaine 1
```

---

## 🎫 Comment valider une semaine et débloquer un badge ?

Chaque semaine se termine par une **Épreuve de passage** à 3 niveaux. Tu débloques le badge quand les **3** sont réussis :

1. **🧠 Quiz auto-corrigé (5/5)** — tu réponds, tu vérifies toi-même avec le script `verifie.sh` (voir ci-dessous). Aucun corrigé n'est écrit en clair : seules les **empreintes SHA-256** des bonnes réponses sont dans les fichiers, donc tu ne peux pas tricher sans chercher.
2. **🚩 Défi du Boss** — une manip pratique concrète sur ta machine (un programme à écrire, une base à monter, un sous-réseau à calculer…).
3. **🏆 Badge / preuve en ligne** — un exercice précis sur une **plateforme gratuite** (Exercism, freeCodeCamp, learngitbranching, Cisco NetAcad, Root-Me…) dont la complétion est ta preuve objective et partageable.

### Utiliser le vérificateur de quiz

```bash
chmod +x verifie.sh          # une seule fois
./verifie.sh "ta réponse"    # affiche l'empreinte SHA-256 de ta réponse
```

Compare l'empreinte affichée à celle du tableau de la semaine. **Identiques = bonne réponse ✅.**

> **Règle de format des réponses** : tout en **minuscules**, **sans accents** (ex. `boucle`, pas `bouclé`), exactement le format demandé (espaces compris).

Exemple :
```bash
$ ./verifie.sh "pwd"
a1159e9df3670d549d04524532629f5477ceb7deec9b45e47e8c009506ecb2c8
```
Si le tableau affiche la même chaîne pour cette question → c'est gagné.

---

## ⚖️ La règle d'or : l'éthique avant tout

> Tu codes, administres et expérimentes **sur tes propres machines** (ou des plateformes faites pour ça). Tu n'accèdes **JAMAIS** à un ordinateur, un site ou un réseau qui ne t'appartient pas sans autorisation **écrite**. En France, l'accès ou le maintien frauduleux dans un système (art. 323-1 et suivants du Code pénal) est un délit — **même sans rien casser**. Le bon professionnel, c'est celui qui sait s'arrêter à la ligne jaune. **Reste du bon côté.**

---

## 🏆 Ton tableau de chasse aux badges

Coche au fur et à mesure :

- [ ] 🏆 Semaine 1 — **Survivant du Terminal**
- [ ] 🏆 Semaine 2 — **Premier Sang Python**
- [ ] 🏆 Semaine 3 — **Forgeron des Données**
- [ ] 🏆 Semaine 4 — **Dompteur des Pointeurs**
- [ ] 🏆 Semaine 5 — **Architecte du Front**
- [ ] 🏆 Semaine 6 — **Bâtisseur du Back**
- [ ] 🏆 Semaine 7 — **Maître des Bases**
- [ ] 🏆 Semaine 8 — **Cartographe des Réseaux**
- [ ] 🏆 Semaine 9 — **Maître des Machines**
- [ ] 🎖️ Semaine 10 — **Alex First Blood — Opérationnel**

---

*Allez Alexandre. Premier sang. Le combat commence maintenant. — First Blood*
