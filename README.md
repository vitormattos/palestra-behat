Behat Talk
==============

* Presentations:
  * https://www.slideshare.net/vitormattosrj/bdd-php-behat
  * https://www.slideshare.net/vitormattosrj/bdd-torne-viva-a-documentao-de-seus-sistemas
* Talk:
  * https://www.youtube.com/watch?v=vwAp5teylF8

## Install
### Selenium

Download the latest stable version of Selenium Server (http://www.seleniumhq.org/download/)

**Firefox**: Check the release date of the downloaded version of Selenium
server and download and install a firefox version with date less then the 
date of your selenium server. Before, install the latest version of
geckodriver (https://github.com/mozilla/geckodriver/releases):
```bash
wget https://github.com/mozilla/geckodriver/releases/download/v0.9.0/geckodriver-v0.9.0-linux64.tar.gz
tar zxfv geckodriver-v0.9.0-linux64.tar.gz 
sudo mv geckodriver /usr/bin/
chmod +x /usr/bin/geckodriver
```

**PhantomJS**: Download PhantomJS from the oficial site
(http://phantomjs.org/download.html). If you use `apt` for install
PhantonJS, dont will work fine because the version from `apt` dont have 
any dependencies to run all features required for integrate PhantonJS with
Selenium. Example:
```bash
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2
sudo mv phantomjs-2.1.1-linux-x86_64 /usr/local/share/
sudo ln -s /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/
```

**Chrome**: Download the latest version of chromedriver
(http://chromedriver.storage.googleapis.com/index.html)
```bash
wget http://chromedriver.storage.googleapis.com/2.29/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/
chmod +x /usr/bin/chromedriver
```

**Running Standalone Selenium Server**
```
java -jar ~/Downloads/selenium-server-standalone-2.53.1.jar
```

### Clone the project
```bash
git clone https://github.com/vitormattos/palestra-behat
```
### Get the Composer, the dependency manager for PHP
```bash
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') ===
'e115a8dc7871f15d853148a7fbac7da27d6c0030b848d9b3dc09e2a0388afed865e6a3d6b3c0fad45c48e2b5fc1196ae')
{ echo 'Installer verified'; } else { echo 'Installer corrupt';
unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');
```
### Install dependencies
```bash
cd palestra-behat
php ../composer.phar install
```

## Running scenarios
**phantonjs**
```bash
vendor/bin/behat -c behatphantonjs.yml -s web features/web/exemploselenium.feature
```

**Chrome**
```bash
vendor/bin/behat -c behatChrome.yml -s web features/web/exemploSelenium.feature
```

**Firefox**
```bash
vendor/bin/behat -c behatFirefox.yml -s web features/web/exemploSelenium.feature
```
