# 🗓️ Semaine 6 — Le web côté back : PHP 8

[⬅️ Semaine 5](semaine-05-web-front.md) · [Retour au sommaire](README.md) · [Semaine 7 ➡️](semaine-07-bdd-sql.md)

### 🎯 Objectifs de la semaine
- Comprendre la différence **front / back** et le rôle d'un **serveur**.
- Écrire du **PHP 8** : variables, conditions, boucles, fonctions, tableaux.
- Traiter un **formulaire** (méthode POST).
- Découvrir les **sessions** (se souvenir d'un utilisateur).

> 📖 À lire en parallèle : **chapitre 6 du manuel** (« Le web côté caché »).

---

## 📘 Cours 6.1 — Front, back, serveur

En semaine 5, tout se passait **dans le navigateur** (le *front*). Mais d'où viennent les données ? D'un **serveur** : un ordinateur distant qui reçoit ta requête, exécute du code, et renvoie une page. Ce code « côté serveur », c'est le *back-end*. **PHP** est l'un des langages les plus répandus pour ça (il fait tourner WordPress, Wikipedia, une grande partie du web).

```
Navigateur  ──(je veux la page)──►  Serveur (PHP)
            ◄──(voici le HTML)────  exécute le code, lit la base, fabrique la page
```

> À retenir : le front s'exécute chez l'utilisateur (navigateur), le back s'exécute sur le serveur. Le PHP fabrique le HTML **avant** de l'envoyer ; l'utilisateur ne voit jamais ton code PHP.

Pour tester en local, on lance le serveur intégré de PHP :
```bash
php -S localhost:8000     # puis on ouvre http://localhost:8000 dans le navigateur
```

---

## 📘 Cours 6.2 — Les bases du PHP

Le code PHP s'écrit entre `<?php ... ?>` et peut être mêlé au HTML. **Toute variable commence par `$`** :

```php
<?php
$prenom = "Alexandre";
$age = 18;

if ($age >= 18) {
    echo "Bienvenue, $prenom !";   // echo affiche
} else {
    echo "Trop jeune.";
}

for ($i = 1; $i <= 3; $i++) {
    echo "<p>Ligne $i</p>";
}
?>
```

Beaucoup de ressemblances avec ce que tu connais : `if`, `for`, `while`, fonctions (`function nom() {...}`). Différences : le `$` partout, les `;` obligatoires, les accolades `{}` (pas l'indentation comme Python).

---

## 📘 Cours 6.3 — Les tableaux PHP

```php
<?php
$fruits = ["pomme", "banane", "cerise"];   // tableau indexé
echo $fruits[1];                            // banane

$eleve = ["nom" => "Alex", "age" => 18];    // tableau associatif (comme un dict)
echo $eleve["nom"];                          // Alex

foreach ($fruits as $f) {                    // parcourir
    echo "<li>$f</li>";
}
?>
```

---

## 📘 Cours 6.4 — Traiter un formulaire

C'est LE cas d'usage de PHP : recevoir ce que l'utilisateur a saisi. Un formulaire HTML envoie ses données en méthode **POST** (non visible dans l'URL) ou **GET** (visible) :

```html
<form action="traitement.php" method="post">
  <input type="text" name="pseudo">
  <button type="submit">Envoyer</button>
</form>
```

```php
<?php  // traitement.php
$pseudo = $_POST["pseudo"];        // on récupère la donnée envoyée
echo "Salut " . htmlspecialchars($pseudo) . " !";
?>
```

> ⚠️ **Sécurité dès le début** : ne fais JAMAIS confiance à ce que l'utilisateur envoie. `htmlspecialchars()` neutralise le HTML malveillant (protège des attaques XSS — que tu as vues dans CyberHero). On valide et on nettoie **toujours** les entrées.

---

## 📘 Cours 6.5 — Les sessions

HTTP « oublie » l'utilisateur d'une page à l'autre. Les **sessions** permettent de se souvenir de lui (par ex. après une connexion) :

```php
<?php
session_start();                       // démarre/reprend la session
$_SESSION["utilisateur"] = "Alex";     // on mémorise
// sur une autre page, après session_start() :
echo "Connecté en tant que " . $_SESSION["utilisateur"];
?>
```

C'est la base de tout système de **connexion**. On l'utilisera avec la base de données en semaine 7.

---

## 🧮 Coin Maths — pourcentages et arrondis

Un site de e-commerce calcule des remises, des TVA, des totaux. PHP fournit `round($n, 2)` (arrondir à 2 décimales), `floor()`, `ceil()`. Exemple : prix TTC = `round($ht * 1.20, 2)` pour une TVA à 20 %. Savoir manipuler pourcentages et arrondis sans erreur d'un centime, c'est un vrai sujet en informatique de gestion.

---

## 🇬🇧 English Corner

| Anglais | Français |
|---|---|
| *server* / *client* | serveur / client |
| *request* / *response* | requête / réponse |
| *form* / *to submit* | formulaire / soumettre |
| *session* | session |
| *back-end* / *front-end* | côté serveur / côté client |

**Mini-tâche** : cherche ce que signifie le code HTTP **404** et le code **200**. Note leur sens en une phrase chacun.

---

## 🎯 Exercices Semaine 6

### Exercice 6.1 — Premier serveur
1. Installe PHP (`sudo apt install php` sous Ubuntu).
2. Crée `index.php` qui affiche « Bonjour » suivi de la date du jour (`date("d/m/Y")`).
3. Lance `php -S localhost:8000` et ouvre la page.

### Exercice 6.2 — Le formulaire de contact
Crée un formulaire (nom, email, message) qui envoie en POST vers `contact.php`, lequel affiche un récapitulatif propre des données reçues (avec `htmlspecialchars`).

### Exercice 6.3 — Le calculateur
Une page avec deux nombres et une opération (+, −, ×, ÷) ; au submit, PHP calcule et affiche le résultat. Gère la division par zéro.

### Exercice 6.4 — Mini-projet : page de connexion 🔐
Crée une mini-appli :
1. Un formulaire de connexion (identifiant + mot de passe).
2. `login.php` vérifie les identifiants (en dur pour l'instant, ex. `alex` / `firstblood`) et, si OK, démarre une **session** et affiche « Bienvenue ».
3. Une page `profil.php` accessible seulement si connecté (sinon, redirige vers la connexion).
4. Un bouton « Déconnexion » qui détruit la session (`session_destroy()`).

---

## 🎫 Épreuve de passage — Semaine 6

Badge **🏆 Bâtisseur du Back** quand les **3** niveaux sont réussis.

### 1. 🧠 Quiz auto-corrigé (5/5)
`./verifie.sh "ta réponse"` (minuscules, sans accents).

| # | Question | SHA-256 de la bonne réponse |
|---|---|---|
| 1 | Quel symbole précède toute variable en PHP ? | `09fc96082d34c2dfc1295d92073b5ea1dc8ef8da95f14dfded011ffb96d3e54b` |
| 2 | Quelle instruction PHP affiche du texte (un mot) ? | `092c79e8f80e559e404bcf660c48f3522b67aba9ff1484b0367e1a4ddef7431d` |
| 3 | Quelle méthode HTTP envoie des données de formulaire sans les montrer dans l'URL (un mot) ? | `72231043bc1807e6f740b235eb7511ecb33255a6a375435631196de8a9750d4b` |
| 4 | Quelle extension porte un fichier PHP (sans le point) ? | `12a5d18ee896e59954bdce0f4acc7212eebe03dae1834ef4ce160ac5afa5c4a8` |
| 5 | Quelle fonction démarre une session en PHP (deux mots reliés par un underscore) ? | `fc573b9bb6622d8559429ca750a206e8774a03d87c905aadf652134e7cde066d` |

### 2. 🚩 Défi du Boss
- Ta mini-appli de connexion fonctionne : connexion qui démarre une session, page `profil.php` protégée, et déconnexion.

### 3. 🏆 Preuve en ligne
Suis le tutoriel **PHP de W3Schools** et fais ses exercices « PHP Form Handling » : [w3schools.com/php](https://www.w3schools.com/php/) (gratuit).

> 🆓 **Alternative gratuite et en français** : le cours **PHP du site Grafikart** (vidéos gratuites) ou la doc officielle **php.net/manual/fr**.

➡️ **🏆 Badge « Bâtisseur du Back ».** `./progression.sh done 6 all` → [Semaine 7](semaine-07-bdd-sql.md) !

---

## ✅ Checklist fin de Semaine 6
- [ ] Je comprends le rôle d'un serveur et la différence front/back.
- [ ] J'écris du PHP (variables `$`, conditions, boucles, tableaux, fonctions).
- [ ] Je traite un formulaire POST en nettoyant les entrées.
- [ ] J'utilise les sessions pour gérer une connexion.
- [ ] Quiz 5/5 + preuve en ligne terminée.
