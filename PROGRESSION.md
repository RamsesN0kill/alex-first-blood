# 📊 Ma progression — Alexandre (First Blood)

> Deux façons de suivre ton avancement :
> - **Sur GitHub** : coche les cases ci-dessous (modifie ce fichier, les `[ ]` deviennent `[x]`).
> - **Dans le terminal** : lance `./progression.sh` pour un tableau de bord animé avec barre de progression et badges. *(Voir le mode d'emploi en bas.)*

Un badge se débloque quand ses **3 étapes** sont cochées : 🧠 Quiz (5/5) · 🚩 Défi du Boss · 🏆 Preuve en ligne (plateforme gratuite).

---

## 🗓️ Semaine 1 — [Linux, terminal & Git](semaine-01-linux-git.md)
- [ ] 🧠 Quiz 5/5
- [ ] 🚩 Défi du Boss
- [ ] 🏆 Preuve en ligne
- [ ] **🏅 Badge « Survivant du Terminal »**

## 🗓️ Semaine 2 — [Python — algo & bases](semaine-02-python-bases.md)
- [ ] 🧠 Quiz 5/5
- [ ] 🚩 Défi du Boss
- [ ] 🏆 Preuve en ligne
- [ ] **🏅 Badge « Premier Sang Python »**

## 🗓️ Semaine 3 — [Python — structures & projet](semaine-03-python-structures.md)
- [ ] 🧠 Quiz 5/5
- [ ] 🚩 Défi du Boss
- [ ] 🏆 Preuve en ligne
- [ ] **🏅 Badge « Forgeron des Données »**

## 🗓️ Semaine 4 — [Le langage C](semaine-04-langage-c.md)
- [ ] 🧠 Quiz 5/5
- [ ] 🚩 Défi du Boss
- [ ] 🏆 Preuve en ligne
- [ ] **🏅 Badge « Dompteur des Pointeurs »**

## 🗓️ Semaine 5 — [Web front (HTML/CSS/JS)](semaine-05-web-front.md)
- [ ] 🧠 Quiz 5/5
- [ ] 🚩 Défi du Boss
- [ ] 🏆 Preuve en ligne
- [ ] **🏅 Badge « Architecte du Front »**

## 🗓️ Semaine 6 — [Web back (PHP 8)](semaine-06-php.md)
- [ ] 🧠 Quiz 5/5
- [ ] 🚩 Défi du Boss
- [ ] 🏆 Preuve en ligne
- [ ] **🏅 Badge « Bâtisseur du Back »**

## 🗓️ Semaine 7 — [Bases de données (SQL/UML)](semaine-07-bdd-sql.md)
- [ ] 🧠 Quiz 5/5
- [ ] 🚩 Défi du Boss
- [ ] 🏆 Preuve en ligne
- [ ] **🏅 Badge « Maître des Bases »**

## 🗓️ Semaine 8 — [Réseaux (OSI, IP, CCNA 1)](semaine-08-reseaux.md)
- [ ] 🧠 Quiz 5/5
- [ ] 🚩 Défi du Boss
- [ ] 🏆 Preuve en ligne
- [ ] **🏅 Badge « Cartographe des Réseaux »**

## 🗓️ Semaine 9 — [Systèmes & virtualisation](semaine-09-systemes-virtu.md)
- [ ] 🧠 Quiz 5/5
- [ ] 🚩 Défi du Boss
- [ ] 🏆 Preuve en ligne
- [ ] **🏅 Badge « Maître des Machines »**

## 🗓️ Semaine 10 — [Synthèse & projet final](semaine-10-synthese.md)
- [ ] 🧠 Quiz 5/5
- [ ] 🚩 Défi du Boss (projet fullstack)
- [ ] 🏆 Preuve en ligne
- [ ] **🎖️ Badge final « Alex First Blood — Opérationnel »**

---

## 🖥️ Le tableau de bord terminal (`progression.sh`)

```bash
chmod +x progression.sh        # une seule fois

./progression.sh               # affiche le tableau de bord
./progression.sh done 1 quiz   # valide le quiz de la semaine 1
./progression.sh done 1 boss   # valide le défi du Boss
./progression.sh done 1 badge  # valide la preuve en ligne
./progression.sh done 1 all    # valide les 3 d'un coup
./progression.sh undo 1 quiz   # annule une validation
./progression.sh reset         # remet tout à zéro
```

Quand les 3 étapes d'une semaine sont validées, le badge se débloque automatiquement 🏆 et la barre de progression monte. Ton avancement est sauvegardé en local (fichier `.progression.state`, personnel, non partagé).

*Allez Alexandre, remplis-moi ces cases ! 💪*
