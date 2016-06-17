```
 _   _         _  _    ______       _                    _
| \ | |       (_)| |   |  _  \     | |                  | |
|  \| | _   _  _ | |_  | | | | ___ | |__    ___   _   _ | |_
| . ` || | | || || __| | | | |/ _ \| '_ \  / _ \ | | | || __|
| |\  || |_| || || |_  | |/ /|  __/| |_) || (_) || |_| || |_
\_| \_/ \__,_||_| \__| |___/  \___||_.__/  \___/  \__,_| \__|
```

Ce dépôt contient le code source du site [reseau.nuitdebout.fr](reseau.nuitdebout.fr), propulsé par Wordpress et BuddyPress.

## Contribuer

La plupart de choses à faire sur le site sont listées dans l'onglet [Issues](https://github.com/nuitdebout/reseau/issues), nous nous efforçons de le tenir à jour.

Vous pouvez en rajouter si vous remarquez un bug, ou si vous avez une suggestion.
Vous pouvez bien entendu soumettre directement une Pull Request.

Afin de simplifier l'usage des Issues, nous nous appuyons sur [ZenHub](https://www.zenhub.io/), une extension Chrome/Firefox qui ajoute des fonctionnalités à l'interface de Github, dont notamment un Kanban.

## Environnement de développement

Le projet est fourni avec une machine virtuelle afin de pouvoir faire tourner le site sur sa machine.

Nous utilisons [WP-Cli](https://wp-cli.org/) pour manipuler Wordpress via la ligne de commande.

- Installer [VirtualBox](https://www.virtualbox.org/) & [Vagrant](https://docs.vagrantup.com/v2/installation/index.html)
- Installer [Ansible](http://ansible.com) via les [Instruction d'installation](http://docs.ansible.com/intro_installation.html#installation).
- Installer les plugins **vagrant-hosts** et **vagrant-vbguest**
- Installer [WP-Cli](https://wp-cli.org/)

### Installation

Commencez par démarrer la machine virtuelle.

Lors du premier démarrage, **Ansible** va provisionner la machine en installant notamment Nginx, PHP et MySQL.

Ensuite, lancez la tâche `install` : celle-ci va installer et paramétrer Wordpress, et installer les plugins.

```
vagrant up
make install
```

Ajoutez la ligne suivante au fichier `/etc/hosts`

```
192.168.100.3 reseau.nuitdebout.dev
```

Le site est accessible à l'adresse [http://reseau.nuitdebout.dev](http://reseau.nuitdebout.dev).

Pour se connecter à l'interface d'administration, aller sur [http://reseau.nuitdebout.dev/wp-admin](http://reseau.nuitdebout.dev/wp-admin), et utiliser les identifiants **admin** / **admin**.


