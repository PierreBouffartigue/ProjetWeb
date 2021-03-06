# Projet UF Web Ynov
## Présentation du projet
Le but de ce projet aura été de recréer un site web existant [https://pixelmon-epicka.com/](https://pixelmon-epicka.com/) que j'utilise pour un serveur de jeu Minecraft. Le site référent a été mis en place grâce au CMS Mineweb qui est spécialisé dans les sites Minecraft. Le site a donc entièrement été refait tout en y retrouvant une structure similaire, mais plus lisible.

## Architecture du site
Le site a été crée sous le Framework Laravel dans sa version 7.5.2. Certains packages n'étaient pas disponibles dans cette version mais je n'ai pas rencontré de grosses difficultés quand au choix de cette version récente. Le visuel a été fait grâce à bootstrap et le site est responsive.
Pour une meilleure gestion du site un CRUD (Create, Read, Update, Delete) a été mis en place, il est accessible via un panel d'administration Voyager qui permet également de gérer la majorité du site. Toutes les pages du site ont un layout commun, le header et le footer ainsi que le système de news sont par conséquent communs à toutes les pages.


## Fonctionnalités majeures

Le site comporte : 
* Une page de règlement modifiable depuis la partie administration. 
* Cette partie comporte une gestion de rang et permissions pour les utilisateurs eux aussi gérables. Ces permissions sont pour l'accès à la partie administration, il y a ensuite une gestion de google analytics, une gestion de pages, posts, des tables et la base de donnée, des hooks et des CRUD. 
* La boutique qui est entièrement fonctionnelle grâce à Stripe. Les paiements peuvent être gérés directement depuis son site (stripe.com) et les articles peuvent être modifiés facilement via le CRUD.
*  Une zone de téléchargement des deux launchers, ils ne sont ici pas modifiables car les launchers ont un lien fixe et sont mis à jour directement depuis l'extérieur. 
* Vient ensuite une radio (celle du serveur NationsGlory mais le lien peut être changé) sur la page d'accueil avec les informations du serveur Minecraft. 
* Sur toutes les pages vous pourrez voir une système de News qui montre un canal textuel Discord. Cette implémentation a été faite grâce au bot WidgetBot qui permet aussi d'écrire les articles directement depuis le site, et par conséquent les annonces discord. 
* La page "discord" accessible depuis la navbar renvoie directement au serveur Discord du serveur de jeu. 
* Une page de vote utilisable grâce au plugin EpickaVote

## Base de donnée
Ma base de donnée est accessible [ici](https://github.com/PierreBouffartigue/ProjetWeb/tree/master/Database) et porte le nom de base "laravel" mais peut être renommée facilement en modifiant le .env à la racine du projet. Toute la base de donnée est gérable via la partie "Database" de la partie administration du site. 

## Installation

Prérequis :
* Un serveur local (Wamp conseillé)
* NodeJS
* Pas obligatoire mais je conseille un IDE tel que Visual Studio Code pour ne pas se perdre dans les multiples dossiers du Framework

Une fois la totalité des fichiers téléchargés :
* Renommez le .env.example en .env
* Depuis le fichier .env indiquez les informations de connexion à votre base de donnée
* Effectuez la commande : `composer update`
* Puis : `composer dump-autoload`
* Ensuite : `php artisan migrate`
* Après ça : `php artisan db:seed`
* Et pour finir et lancer le site : `php artisan serve`
* Passer un compte en administrateur : `php artisan voyager:admin your@email.com`

##  Utilisation
Le site ne comporte pas de licence et peut donc être réutilisé et modifié sans problème, faites toutefois attention aux licences des packages et du Framework en lui même.

## Captures d'écran
![enter image description here](https://cdn.discordapp.com/attachments/698581960179843262/699330765640433684/home.PNG)
![enter image description here](https://cdn.discordapp.com/attachments/698581960179843262/699330764071763998/new.PNG)
![enter image description here](https://cdn.discordapp.com/attachments/698581960179843262/699330765866926100/cart.PNG)
![enter image description here](https://cdn.discordapp.com/attachments/698581960179843262/699330767594979428/crud_administration.PNG)
![enter image description here](https://cdn.discordapp.com/attachments/698581960179843262/699330762520133672/responsive.PNG)
