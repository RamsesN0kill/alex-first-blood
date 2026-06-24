# 🗓️ Semaine 9 — Systèmes & virtualisation

[⬅️ Semaine 8](semaine-08-reseaux.md) · [Retour au sommaire](README.md) · [Semaine 10 ➡️](semaine-10-synthese.md)

### 🎯 Objectifs de la semaine
- Comprendre la **virtualisation** et l'**hyperviseur** (ESXi/Proxmox, VirtualBox).
- Administrer un **serveur Linux** : utilisateurs, services, paquets, SSH.
- Découvrir **Windows Server 2022** et l'**Active Directory**.
- Poser les bases du **durcissement** (hardening) — la passerelle vers CyberHero.

> 📖 À lire en parallèle : **chapitre 9 du manuel** (« Monter ses serveurs »).

---

## 📘 Cours 9.1 — La virtualisation

Un serveur physique coûte cher et n'est utilisé qu'à 10 %. La **virtualisation** permet de faire tourner **plusieurs ordinateurs (VM)** sur une seule machine physique. Le logiciel qui orchestre ça s'appelle un **hyperviseur** :

| Hyperviseur | Type | Usage |
|---|---|---|
| **VirtualBox** | poste de travail | apprendre, tester (ce que tu utilises) |
| **VMware ESXi** | « bare-metal » (sur le serveur nu) | entreprise — **enseigné en cours** |
| **Proxmox** | bare-metal, open source | entreprise, homelab — **enseigné en cours** |

Avantages : isolation, **snapshots** (photo de l'état d'une VM, restaurable en 5 s), déploiement rapide, économies. C'est la base du **cloud**.

> À retenir : une VM est un ordinateur simulé. L'hyperviseur est le logiciel qui fait tourner les VM. Un snapshot fige l'état d'une VM pour y revenir après une bêtise.

---

## 📘 Cours 9.2 — Administrer un serveur Linux

Un serveur n'a souvent **pas d'écran** : on l'administre en ligne de commande, à distance, via **SSH**.

```bash
ssh alex@192.168.1.50           # se connecter à distance
sudo apt update && sudo apt upgrade   # mettre à jour
sudo apt install nginx          # installer un service (ici un serveur web)
systemctl status nginx          # voir si le service tourne
systemctl restart nginx         # le redémarrer
```

Gérer les **utilisateurs** :
```bash
sudo adduser sofia              # créer un utilisateur
sudo usermod -aG sudo sofia     # lui donner les droits admin
```

Les **logs** (journaux) vivent dans `/var/log/` — ils racontent tout ce qui se passe.

---

## 📘 Cours 9.3 — Windows Server & Active Directory

Beaucoup d'entreprises tournent sous **Windows Server 2022**. Sa pièce maîtresse : l'**Active Directory (AD)** — l'annuaire central qui gère **tous les utilisateurs, ordinateurs et droits** d'une organisation. Quand tu te connectes au PC du boulot avec ton compte, c'est l'AD qui te valide.

Concepts : **domaine** (l'ensemble géré), **contrôleur de domaine** (le serveur qui héberge l'AD), **GPO** (stratégies de groupe : appliquer des règles à tous les postes d'un coup).

---

## 📘 Cours 9.4 — Le durcissement (hardening), en express

Un serveur fraîchement installé est une **porte ouverte**. Le **durcissement** consiste à réduire la surface d'attaque. Les réflexes de base :

- **Mettre à jour** systématiquement (`apt upgrade`).
- **Pare-feu** : n'ouvrir que les ports nécessaires. Sous Ubuntu, `ufw` :
  ```bash
  sudo ufw allow 22/tcp     # autoriser SSH
  sudo ufw enable           # activer le pare-feu
  ```
- **SSH** : désactiver la connexion `root`, préférer les **clés** aux mots de passe.
- **Comptes** : supprimer les comptes inutiles, mots de passe forts, principe du **moindre privilège**.

> 💡 Tu veux aller plus loin sur la défense (fail2ban, détection, SIEM, réponse à incident) ? C'est tout le programme **« Alex le CyberHero »** ! First Blood te donne les fondations système ; CyberHero t'apprend à les défendre offensivement et défensivement.

---

## 🧮 Coin Maths — RAID et capacités

Quand on monte un serveur, on combine les disques en **RAID** pour la sécurité ou la vitesse. Exemple : un **RAID 1** (miroir) sur deux disques de 2 To donne **2 To** utilisables (l'autre est une copie) ; un **RAID 0** donne 4 To mais zéro sécurité. Calculer la capacité utile et la tolérance aux pannes, c'est de l'arithmétique simple… qu'il vaut mieux ne pas rater quand des données sont en jeu.

---

## 🇬🇧 English Corner

| Anglais | Français |
|---|---|
| *server* / *host* | serveur / hôte |
| *to deploy* | déployer |
| *snapshot* | instantané (photo d'une VM) |
| *to harden* / *hardening* | durcir / durcissement |
| *least privilege* | moindre privilège |

**Mini-tâche** : cherche ce que signifie **SSH** (3 mots anglais) et pourquoi le « S » est important par rapport à l'ancien protocole Telnet.

---

## 🎯 Exercices Semaine 9

### Exercice 9.1 — Ton serveur Linux
1. Crée une VM **Ubuntu Server** (sans interface graphique) dans VirtualBox.
2. Active SSH et connecte-toi dessus **depuis ta machine hôte** (`ssh ...`).
3. Installe `nginx`, démarre-le, et affiche sa page d'accueil depuis ton navigateur (via l'IP de la VM).

### Exercice 9.2 — Utilisateurs & permissions
Crée 2 utilisateurs, donne les droits sudo à l'un, crée un dossier partagé avec des permissions précises, et vérifie qui peut y écrire.

### Exercice 9.3 — Snapshots & durcissement
1. Fais un **snapshot** « propre » de ta VM.
2. Configure `ufw` pour n'autoriser que SSH (22) et HTTP (80).
3. Casse volontairement quelque chose, puis **restaure le snapshot** : observe la magie.

### Exercice 9.4 — Mini-projet : le serveur web maison 🖥️
Monte une VM Ubuntu Server qui héberge **ton site de la semaine 5** (ou ta page PHP de la semaine 6) :
1. Installe le serveur web (nginx ou Apache) + PHP si besoin.
2. Dépose tes fichiers, configure, et accède au site depuis l'hôte via l'IP.
3. Durcis : pare-feu actif, SSH par clé, système à jour. Documente les étapes dans un `README`.

---

## 🎫 Épreuve de passage — Semaine 9

Badge **🏆 Maître des Machines** quand les **3** niveaux sont réussis.

### 1. 🧠 Quiz auto-corrigé (5/5)
`./verifie.sh "ta réponse"` (minuscules, sans accents).

| # | Question | SHA-256 de la bonne réponse |
|---|---|---|
| 1 | Quel hyperviseur bare-metal de VMware est enseigné en cours (4 lettres) ? | `7789839e136e4c0d76253d4649e95ef8c6ee9758b148e4f0b39a7a6b08a79c07` |
| 2 | Quelle commande installe un paquet sous Ubuntu (deux mots) ? | `24e9205560c1abe45a189a3bb68e72e582b118bb9c5a29e33b363d832834a140` |
| 3 | Comment s'appelle la photo de l'état d'une VM à un instant donné (un mot anglais) ? | `16a0eeb0791b6c92451fd284dd9f599e0a7dbe7f6ebea6e2d2d06c7f74aec112` |
| 4 | Quel annuaire Windows gère utilisateurs et droits d'un domaine (deux mots) ? | `fa8f7d24b840b6c54ff1b291f86a6bfbd3e3dd54ef3af95cd42b8827716b550a` |
| 5 | Quel pare-feu simple s'active sous Ubuntu (3 lettres) ? | `948b0ea85700f2c1a8c0d3eaad142134d7d311878711d97cf7441623fd71c297` |

### 2. 🚩 Défi du Boss
- Ta VM Ubuntu Server héberge ton site, accessible depuis l'hôte via son IP, avec `ufw` actif et SSH fonctionnel. Un snapshot « propre » existe.

### 3. 🏆 Preuve en ligne
Termine la room gratuite **« Linux Fundamentals »** (ou « Windows Fundamentals ») sur **TryHackMe** : [tryhackme.com](https://tryhackme.com/) — orientée admin/sécurité, parfaite passerelle vers CyberHero.

> 🆓 **Alternative 100 % gratuite** : **OverTheWire — Bandit** (niveaux 11+) pour l'admin Linux à distance ; ou le **« Linux Survival »** → [linuxsurvival.com](https://linuxsurvival.com/).

➡️ **🏆 Badge « Maître des Machines ».** `./progression.sh done 9 all` → [Semaine 10](semaine-10-synthese.md), le grand final !

---

## ✅ Checklist fin de Semaine 9
- [ ] Je comprends virtualisation, hyperviseur et snapshot.
- [ ] J'administre un serveur Linux à distance (SSH, services, paquets, utilisateurs).
- [ ] Je sais ce qu'est Windows Server et l'Active Directory.
- [ ] Je durcis un serveur (pare-feu `ufw`, SSH, moindre privilège).
- [ ] Quiz 5/5 + preuve en ligne terminée.
