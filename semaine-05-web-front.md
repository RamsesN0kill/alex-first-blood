# 🗓️ Semaine 5 — Le web côté front : HTML5, CSS3, JavaScript

[⬅️ Semaine 4](semaine-04-langage-c.md) · [Retour au sommaire](README.md) · [Semaine 6 ➡️](semaine-06-php.md)

### 🎯 Objectifs de la semaine
- Comprendre le trio **HTML / CSS / JavaScript** et leurs rôles.
- Structurer une page avec **HTML5**.
- La mettre en forme avec **CSS3**.
- La rendre interactive avec **JavaScript**.

> 📖 À lire en parallèle : **chapitre 5 du manuel** (« Le web côté visible »).

---

## 📘 Cours 5.1 — Le trio du web

Une page web, c'est trois langages complémentaires. L'analogie d'une maison :

| Langage | Rôle | Analogie |
|---|---|---|
| **HTML** | la **structure** et le contenu | les murs, les pièces |
| **CSS** | la **mise en forme** (couleurs, polices, disposition) | la peinture, la déco |
| **JavaScript** | le **comportement** (interactivité) | l'électricité, les interrupteurs |

Aucun outil compliqué : un éditeur de texte (VS Code) et un navigateur suffisent.

---

## 📘 Cours 5.2 — HTML5 : la structure

Le HTML est fait de **balises** entre chevrons, le plus souvent par paires (ouvrante/fermante) :

```html
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Ma page</title>
</head>
<body>
  <h1>Salut, je suis Alexandre</h1>
  <p>Mon premier <strong>paragraphe</strong> en HTML.</p>
  <a href="https://exemple.fr">Un lien</a>
  <img src="photo.jpg" alt="Description de la photo">
  <ul>
    <li>Premier élément</li>
    <li>Deuxième élément</li>
  </ul>
</body>
</html>
```

Balises courantes : `<h1>`…`<h6>` (titres), `<p>` (paragraphe), `<a>` (lien), `<img>` (image), `<ul>`/`<li>` (liste), `<div>` (conteneur).

> 💡 L'attribut `alt` de `<img>` décrit l'image : il est lu par les lecteurs d'écran (accessibilité) et affiché si l'image ne charge pas. On ne l'oublie pas.

---

## 📘 Cours 5.3 — CSS3 : l'habillage

Le CSS associe des **règles de style** à des éléments, via des **sélecteurs** :

```css
body {
  font-family: sans-serif;
  background-color: #1c1c2e;
  color: white;
}
h1 {
  color: crimson;
  text-align: center;
}
.bouton {              /* . = une classe */
  background-color: crimson;
  padding: 10px 20px;
  border-radius: 8px;
}
```

On relie le CSS au HTML dans le `<head>` : `<link rel="stylesheet" href="style.css">`.

Notions clés : sélecteurs (par balise, par `.classe`, par `#id`), le **modèle de boîte** (`margin`, `border`, `padding`, `content`), et la disposition moderne avec **Flexbox** (`display: flex`).

---

## 📘 Cours 5.4 — JavaScript : l'interactivité

JavaScript s'exécute **dans le navigateur** et peut modifier la page en direct :

```html
<button id="btn">Clique-moi</button>
<p id="message"></p>

<script>
  const bouton = document.getElementById("btn");
  bouton.addEventListener("click", function () {
    document.getElementById("message").textContent = "Bravo, ça marche !";
  });
</script>
```

- `const` / `let` déclarent des variables (comme `int`/`str` mais sans type fixe).
- `document.getElementById(...)` attrape un élément de la page (le **DOM**).
- `addEventListener("click", ...)` réagit à une action de l'utilisateur.

> À retenir : HTML = quoi, CSS = à quoi ça ressemble, JS = ce qui se passe quand on interagit. Les trois ensemble font une page vivante.

---

## 🧮 Coin Maths — les couleurs en hexadécimal

En CSS, les couleurs s'écrivent souvent `#RRGGBB` : trois octets en **hexadécimal** pour le rouge, le vert, le bleu (0 à 255 chacun). `#FF0000` = rouge pur, `#000000` = noir, `#FFFFFF` = blanc. Tu retrouves l'hexa des semaines 1 et 4 — le web entier code ses couleurs comme ça.

---

## 🇬🇧 English Corner

| Anglais | Français |
|---|---|
| *tag* / *element* | balise / élément |
| *stylesheet* | feuille de style |
| *button* / *click* | bouton / clic |
| *to display* | afficher |
| *browser* | navigateur |

**Mini-tâche** : ouvre les **outils de développement** de ton navigateur (touche F12), onglet *Elements*. Survole le HTML d'un site que tu aimes et observe sa structure.

---

## 🎯 Exercices Semaine 5

### Exercice 5.1 — Ta page de présentation
Crée `index.html` : un titre avec ton nom, un paragraphe de présentation, une photo (ou une image au hasard), une liste de tes centres d'intérêt et un lien vers ton GitHub.

### Exercice 5.2 — Habille-la
Crée `style.css` : change la police, les couleurs, centre le titre, encadre ta photo (`border-radius`), et dispose le tout proprement avec Flexbox.

### Exercice 5.3 — Rends-la vivante
Ajoute un bouton « Mode sombre / clair » qui, au clic, bascule la couleur de fond de la page via JavaScript.

### Exercice 5.4 — Mini-projet : la carte de visite interactive 💳
Assemble le tout en une **carte de visite numérique** : présentation stylée, un bouton qui affiche/masque tes coordonnées, et un compteur « tu as cliqué N fois ». Publie-la sur ton GitHub (et même en ligne gratuitement avec **GitHub Pages** !).

---

## 🎫 Épreuve de passage — Semaine 5

Badge **🏆 Architecte du Front** quand les **3** niveaux sont réussis.

### 1. 🧠 Quiz auto-corrigé (5/5)
`./verifie.sh "ta réponse"` (minuscules, sans accents).

| # | Question | SHA-256 de la bonne réponse |
|---|---|---|
| 1 | Quelle balise HTML crée un lien hypertexte (une lettre) ? | `ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb` |
| 2 | Quelle balise HTML insère une image (3 lettres) ? | `b29814cf5792e684cd75d6a7fce7a67a11887e312f87ca2ac2496d81f365ff72` |
| 3 | Quelle propriété CSS change la couleur du texte ? | `74284d9dcbcc09928ca5d7d6187270a62ac1b58ccdc4a44b81e47257ffa53b9e` |
| 4 | Quel langage rend une page web interactive (un mot) ? | `eda71746c01c3f465ffd02b6da15a6518e6fbc8f06f1ac525be193be5507069d` |
| 5 | Quelle balise HTML crée un paragraphe (une lettre) ? | `148de9c5a7a44d19e56cd9ae1a554bf67847afb0c58f6e12fa29ac7ddfca9940` |

### 2. 🚩 Défi du Boss
- Ta carte de visite interactive fonctionne : HTML structuré, CSS soigné, et **au moins une interaction JavaScript** (bouton qui change quelque chose).

### 3. 🏆 Preuve en ligne
Termine le module **« Responsive Web Design »** de **freeCodeCamp** (au moins les sections HTML et CSS de base) : [freecodecamp.org](https://www.freecodecamp.org/) (gratuit, certificat à la clé).

> 🆓 **Alternative gratuite** : les cours **HTML/CSS de la Khan Academy** ou les tutoriels interactifs de **MDN Web Docs** (la référence du web, en français) → [developer.mozilla.org/fr](https://developer.mozilla.org/fr/).

➡️ **🏆 Badge « Architecte du Front ».** `./progression.sh done 5 all` → [Semaine 6](semaine-06-php.md) !

---

## ✅ Checklist fin de Semaine 5
- [ ] Je structure une page avec les balises HTML5 courantes.
- [ ] Je mets en forme avec le CSS (sélecteurs, modèle de boîte, Flexbox).
- [ ] J'ajoute de l'interactivité avec JavaScript (DOM + événement).
- [ ] Ma carte de visite est publiée sur GitHub.
- [ ] Quiz 5/5 + preuve en ligne terminée.
