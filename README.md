# TripDate

TripDate is an online dating application. Let's join adventurers and itineraries!

This project was part of the [GLAMhack 2020 Hackaton](http://make.opendata.ch/wiki/event:2020-06)! Team: [Extra Moenia](https://hack.glam.opendata.ch/project/8).

## Team

* [Iolanda Pensa](http://iopensa.ch/iolanda-pensa) - GLAM hacker
* [Marta Pucciarelli](https://it.wikipedia.org/wiki/Utente:Marta.pucciarelli) - GLAM hacker
* [Vanessa De Luca](https://maind.supsi.ch/master-interaction-design/) - contributor
* [Giovanni Profeta](https://twitter.com/profeta_g) - frontend developer
* [Valerio Bozzolan](https://boz.reyboz.it/) - backend developer and sys

## Hack

How to hack this project quickly in nearly ~20 seconds.

1. Create a MariaDB database. For example:

```
mysql
CREATE DATABASE `tripdate`;
CREATE USER `tripdate`@localhost IDENTIFIED BY 'super-secret-password-asd';
GRANT ALL PRIVILEGES ON `tripdate`.* TO `tripdate`@localhost;
quit
```

2. Copy the project and dependencies somewhere:

```
git clone https://github.com/trip-date/trip-date.github.io.git
git clone https://gitpull.it/source/suckless-php.git
git clone https://gitpull.it/source/boz-mw.git
```

3. Enter in the project and update your MySQL configuration

```
cd trip-date.github.io
cp load-example.php load.php
nano                load.php
```

4. Import the database schema. For example:

```
mysql tripdate -u tripdate -p < documentation/database/schema.sql 
```

5. Have fun! For example:

```
php -S localhost:8080
```

Now you should see something like this:

https://tripdate.gitpull.it/

## License

TripDate is realised under [GNU Affero General Public License](https://github.com/trip-date/trip-date.github.io/blob/master/LICENSE).

