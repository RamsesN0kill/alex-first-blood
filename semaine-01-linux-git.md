# 🗓️ Semaine 1 — Linux, terminal & Git

[⬅️ Retour au sommaire](README.md) · [Semaine 2 ➡️](semaine-02-python-bases.md)

### 🎯 Objectifs de la semaine
- Avoir un **Linux** qui tourne (vraie machine, VM ou WSL) et savoir s'y déplacer.
- Maîtriser **le terminal** : fichiers, dossiers, **permissions**.
- Écrire ton **premier script Bash**.
- Comprendre et utiliser **Git** : sauvegarder ton travail, l'historiser, le pousser sur **GitHub**.

> 📖 À lire en parallèle : **chapitre 1 du manuel** (« Linux, Git et toi »).

---

## 📘 Cours 1.1 — Pourquoi Linux, et comment l'avoir

En entreprise, **la grande majorité des serveurs tournent sous Linux**. En cybersécurité et en dev, savoir s'en servir n'est pas optionnel : c'est l'outil de base. Bonne nouvelle, c'est gratuit et tu peux l'avoir de trois façons :

| Façon | Pour qui | Remarque |
|---|---|---|
| **WSL** (Windows Subsystem for Linux) | Tu es sous Windows et tu veux aller vite | `wsl --install` dans PowerShell admin → un vrai Ubuntu dans Windows |
| **Machine virtuelle** (VirtualBox + Ubuntu) | Tu veux un système isolé et complet | Plus lourd, mais le plus proche d'un vrai serveur |
| **Double-boot / vraie machine** | Tu es à l'aise | Le plus performant, le plus engageant |

➡️ **On part sur Ubuntu** (la distribution la plus répandue pour débuter), via **WSL** si tu es sous Windows, ou une **VM VirtualBox** sinon.

> 💡 Tu as déjà fait « Alex le CyberHero » ? Tu y avais installé **Kali**. Kali est super pour l'offensif, mais pour le **dev** et l'**admin** (ce qu'on fait ici), **Ubuntu** est plus représentatif de ce que tu verras en cours et en stage.

---

## 📘 Cours 1.2 — Le terminal, ton outil n°1

Le **terminal** (ou *shell*) est une fenêtre où tu tapes des commandes texte. C'est plus rapide et plus puissant que la souris une fois qu'on le maîtrise.

**Les commandes vitales**

| Commande | À quoi ça sert | Exemple |
|---|---|---|
| `pwd` | Où suis-je ? (*print working directory*) | `pwd` |
| `ls` | Lister fichiers/dossiers | `ls -la` (tout, même cachés) |
| `cd` | Changer de dossier | `cd ~/projets` |
| `mkdir` | Créer un dossier | `mkdir first-blood` |
| `touch` | Créer un fichier vide | `touch notes.txt` |
| `cp` / `mv` | Copier / déplacer (ou renommer) | `mv a.txt b.txt` |
| `rm` | **Supprimer** (⚠️) | `rm fichier.txt`, `rm -r dossier/` |
| `cat` | Afficher un fichier | `cat notes.txt` |
| `grep` | Chercher du texte | `grep "erreur" log.txt` |
| `nano` | Éditer un fichier (simple) | `nano script.sh` |
| `chmod` | Changer les permissions | `chmod +x script.sh` |
| `man` | Le manuel d'une commande | `man ls` |

> ⚠️ **DANGER `rm -rf /`** : cette commande efface TOUT. Ne la tape jamais « pour voir ». L'erreur de réflexe se paie un jour sur une vraie machine.

**Les permissions Linux** 🔐

Chaque fichier a des droits pour 3 catégories : **propriétaire (u)**, **groupe (g)**, **autres (o)**. Trois actions : **lire (r=4)**, **écrire (w=2)**, **exécuter (x=1)**. On additionne :

| Notation | u | g | o | Sens |
|---|---|---|---|---|
| `755` | rwx | r-x | r-x | Programme exécutable par tous, modifiable par toi seul |
| `644` | rw- | r-- | r-- | Fichier lisible par tous, modifiable par toi seul |
| `600` | rw- | --- | --- | Fichier privé (clé SSH, mot de passe) |

`rwx = 4+2+1 = 7`, `r-x = 4+0+1 = 5`. Rendre un script exécutable : `chmod +x mon_script.sh`.

---

## 📘 Cours 1.3 — Ton premier script Bash

Un **script** est un fichier qui enchaîne des commandes. Le tien :

```bash
#!/bin/bash
echo "Salut, $USER ! Bienvenue dans First Blood."
echo "On est le $(date '+%A %d %B %Y'), il est $(date +%H:%M)."
echo "Ce dossier contient $(ls -1 | wc -l) éléments."
```

- La 1re ligne (`#!/bin/bash`, le *shebang*) dit au système quel programme exécute le fichier.
- `$USER` est une **variable** ; `$(...)` exécute une commande et insère son résultat.
- On le rend exécutable (`chmod +x bienvenue.sh`) puis on le lance (`./bienvenue.sh`).

---

## 📘 Cours 1.4 — Git : la machine à remonter le temps

**Le problème.** Tu codes, ça marche. Tu modifies, ça casse. Tu voudrais revenir en arrière… mais `projet_final_v2_vraiment_final.zip`, c'est l'enfer.

**La solution : Git.** Un outil qui **photographie** ton projet à chaque étape (un *commit*). Tu peux revenir à n'importe quelle photo, voir ce qui a changé, et travailler à plusieurs sans t'écraser. **GitHub** est le site qui héberge tes dépôts en ligne (ta sauvegarde + ton portfolio public).

**Le cycle de base**

| Commande | Ce que ça fait | Analogie |
|---|---|---|
| `git init` | Démarre le suivi Git dans un dossier | « J'ouvre un carnet de bord » |
| `git status` | Montre ce qui a changé | « Qu'est-ce qui a bougé ? » |
| `git add fichier` | Prépare un fichier pour la photo | « Je place les acteurs » |
| `git commit -m "message"` | Prend la photo (sauvegarde l'étape) | « Clic ! » |
| `git log` | Historique des photos | « L'album » |
| `git clone <url>` | Télécharge une copie d'un dépôt distant | « Je récupère le projet » |
| `git push` | Envoie tes commits sur GitHub | « Je publie » |

> À retenir : un **commit** = une étape sauvegardée **en local**. Un **push** = l'envoi de ces étapes **sur GitHub**. Ce sont deux choses différentes : on peut commiter sans Internet.

---

## 🧮 Coin Maths — binaire et hexadécimal (épisode 1)

L'ordinateur ne connaît que **0 et 1** (le *binaire*, base 2). Un **bit** = un 0 ou un 1. Huit bits = un **octet** (*byte*), qui code un nombre de 0 à 255.

- Compter en binaire : `0, 1, 10, 11, 100…` (= 0, 1, 2, 3, 4 en décimal).
- `1011` en binaire = `1×8 + 0×4 + 1×2 + 1×1` = **11** en décimal.
- L'**hexadécimal** (base 16, chiffres `0-9` puis `a-f`) sert à écrire les octets de façon compacte : `ff` = 255, `0a` = 10.

> On y reviendra en semaine 4 (le C) et semaine 8 (les adresses IP, qui sont… des octets).

---

## 🇬🇧 English Corner

90 % de la doc technique est en anglais. Cette semaine, retiens :

| Anglais | Français |
|---|---|
| *file* / *folder* (*directory*) | fichier / dossier (répertoire) |
| *command* | commande |
| *permission* / *owner* | permission / propriétaire |
| *commit* / *repository* (*repo*) | enregistrement / dépôt |
| *to clone* / *to push* | cloner / pousser (publier) |

**Mini-tâche** : ouvre `man ls` (en anglais selon ta config) et trouve ce que fait l'option `-a`. Traduis la description en une phrase.

---

## 🎯 Exercices Semaine 1

### Exercice 1.1 — Installe ton Linux et explore
1. Mets en place ton Linux (WSL : `wsl --install` ; ou VM VirtualBox + Ubuntu).
2. Mets à jour : `sudo apt update && sudo apt upgrade -y`.
3. Crée ton terrain de jeu : `mkdir ~/first-blood && cd ~/first-blood`.
4. Crée `notes.txt` avec `nano`, écris-y 3 lignes, sauvegarde (`Ctrl+O`, `Entrée`, `Ctrl+X`).
5. Affiche-le (`cat notes.txt`), puis liste le dossier avec détails (`ls -la`).

### Exercice 1.2 — Permissions & script
1. Écris le script `bienvenue.sh` du cours 1.3.
2. Rends-le exécutable (`chmod +x bienvenue.sh`) et lance-le.
3. Vérifie ses permissions avec `ls -l` (tu dois voir `rwx`).
4. **Défi bonus** : ajoute une ligne qui affiche ton adresse IP locale (`ip a | grep inet`).

### Exercice 1.3 — Ton premier dépôt Git
1. Dans `~/first-blood`, lance `git init`.
2. Configure ton identité (une fois) :
   ```bash
   git config --global user.name "Alexandre"
   git config --global user.email "ton.email@exemple.fr"
   ```
3. `git add .` puis `git commit -m "Premier commit : mon terrain First Blood"`.
4. Regarde l'historique : `git log --oneline`.
5. **Défi bonus** : crée un dépôt vide sur **GitHub**, puis relie-le et publie :
   ```bash
   git remote add origin <url-de-ton-depot>
   git branch -M main
   git push -u origin main
   ```

---

## 🎫 Épreuve de passage — Semaine 1

Tu débloques le badge **🏆 Survivant du Terminal** quand les **3** niveaux sont réussis.

### 1. 🧠 Quiz auto-corrigé (5/5)
Réponds, puis vérifie avec `./verifie.sh "ta réponse"` (minuscules, sans accents).

| # | Question | SHA-256 de la bonne réponse |
|---|---|---|
| 1 | Quelle commande affiche le chemin du dossier courant ? | `a1159e9df3670d549d04524532629f5477ceb7deec9b45e47e8c009506ecb2c8` |
| 2 | Quelle commande crée un nouveau dossier ? | `95c5007a9af81a5e61624caacc506bb513a476dd6c31d653468154137078246c` |
| 3 | Quelle commande Git enregistre une étape dans l'historique local (un mot) ? | `9505cacb7c710ed17125fcc6cb3669e8ddca6c8cd8af6a31f6b3cd64604c3098` |
| 4 | Quelle valeur octale correspond aux permissions `rwxr-xr-x` ? | `86ab8cbe5869bd1f9c70924e9c04fef3bbe3bbaaf4e816efeeaf7eb6a31937d2` |
| 5 | Quelle commande Git télécharge une copie d'un dépôt distant (un mot) ? | `b5d61dc89a35d2c924b28c9760765da94039e94184c50f87dde54532f126b4ac` |

### 2. 🚩 Défi du Boss
- Ton Linux tourne, est à jour, et `~/first-blood` existe.
- `bienvenue.sh` s'exécute et affiche bien la date, l'heure et le nombre de fichiers.
- `git log --oneline` montre **au moins un commit** que tu as créé.

### 3. 🏆 Preuve en ligne
Termine **« Learn Git Branching »**, niveaux *Introduction Sequence* (1.1 à 1.4) : [learngitbranching.js.org](https://learngitbranching.js.org/?locale=fr_FR) — gratuit, dans le navigateur, en français.

> 🆓 **Alternative / bonus très formateur** : **OverTheWire — Bandit**, niveaux 0 à 10 (jeu Linux dans le navigateur, aucun compte) → [overthewire.org/wargames/bandit](https://overthewire.org/wargames/bandit/). Plateforme française gratuite : **Root-Me** → [root-me.org](https://www.root-me.org/).

➡️ Les 3 réussis ? **🏆 Badge « Survivant du Terminal » débloqué.** Valide-le : `./progression.sh done 1 all`. Direction la [Semaine 2](semaine-02-python-bases.md) !

---

## ✅ Checklist fin de Semaine 1
- [ ] Mon Linux tourne et est à jour.
- [ ] Je connais 12+ commandes de base et je sais lire les permissions (`644`, `755`, `600`).
- [ ] Mon script Bash s'exécute.
- [ ] Je sais faire `init → add → commit → log`, et publier sur GitHub.
- [ ] Je sais compter en binaire jusqu'à 16.
- [ ] Quiz 5/5 + preuve en ligne terminée.
