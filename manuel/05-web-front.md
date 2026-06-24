# Chapitre 5 — Le web côté visible

## Ce qui se passe quand tu ouvres une page

Tu tapes une adresse, et une page s'affiche : du texte, des images, des couleurs, des boutons. Mais qui fabrique tout ça ? En réalité, ton navigateur reçoit du **code** et le transforme en page jolie. Ce code, côté visible, repose sur **trois langages** qui travaillent ensemble.

L'analogie de la maison résume tout :
- **HTML** = les **murs et les pièces** (la structure, le contenu).
- **CSS** = la **peinture et la décoration** (l'apparence).
- **JavaScript** = l'**électricité et les interrupteurs** (ce qui réagit quand on agit).

> À retenir : HTML structure, CSS habille, JavaScript anime. Les trois ensemble font une page web vivante. Et le plus beau : aucun logiciel compliqué, juste un éditeur de texte et un navigateur.

## HTML : la charpente

Le **HTML** décrit la structure avec des **balises** entre chevrons : `<h1>` pour un grand titre, `<p>` pour un paragraphe, `<a>` pour un lien, `<img>` pour une image, `<ul>` et `<li>` pour une liste. La plupart vont par paires : une balise ouvrante et une fermante, qui encadrent le contenu.

Le HTML ne s'occupe **que du sens** : « ceci est un titre », « ceci est un paragraphe », « ceci est un lien vers cette adresse ». Pas des couleurs, pas de la disposition — ça, c'est le travail du CSS.

## CSS : l'habillage

Le **CSS** vient styliser le HTML. Tu écris des **règles** : « les titres sont rouges et centrés », « le fond est sombre », « ce bouton a des coins arrondis ». Tu choisis **quels** éléments styliser avec des *sélecteurs* (par type de balise, par classe, par identifiant).

Deux notions reviennent partout : le **modèle de boîte** (chaque élément est une boîte avec une marge, une bordure, un espace intérieur et un contenu) et **Flexbox** (un système moderne pour disposer les éléments proprement, les aligner, les répartir). Avec le CSS, la même page HTML peut passer d'austère à magnifique.

## JavaScript : la vie

Le HTML et le CSS donnent une page **figée**. Le **JavaScript** la rend **interactive** : un bouton qui réagit au clic, un menu qui s'ouvre, un compteur qui s'incrémente, un formulaire qui se vérifie sans recharger la page. JavaScript s'exécute **dans le navigateur** et peut modifier la page en direct — on dit qu'il manipule le **DOM** (la représentation de la page que le navigateur garde en mémoire).

Le schéma mental : tu **attrapes** un élément de la page (`document.getElementById`), puis tu lui dis de **réagir** à un événement (`addEventListener("click", ...)`), et dans la réaction, tu **modifies** la page.

> À retenir : sans JavaScript, une page est une affiche. Avec, elle devient une application. C'est lui qui réagit aux actions de l'utilisateur.

## Ce qu'il faut retenir de ce chapitre

- Une page web visible repose sur trois langages : HTML (structure), CSS (style), JavaScript (interactivité).
- HTML = des balises qui décrivent le sens du contenu.
- CSS = des règles de style appliquées via des sélecteurs ; pense « modèle de boîte » et Flexbox.
- JavaScript anime la page en réagissant aux actions de l'utilisateur (le DOM).

Au cahier de la **semaine 5**, tu construis ta carte de visite numérique interactive — et tu la publies en ligne gratuitement. Ta première vitrine sur le web.
