Behat Talk
==============

* Presentations:
  * https://www.slideshare.net/vitormattosrj/bdd-php-behat
  * https://www.slideshare.net/vitormattosrj/bdd-torne-viva-a-documentao-de-seus-sistemas
* Talk:
  * https://www.youtube.com/watch?v=QVZe7fQck8s
  * https://www.youtube.com/watch?v=vwAp5teylF8
  * https://www.facebook.com/agiletesters/videos/821450284675853/

## Install
### Selenium

Download the latest stable version of Selenium Server (http://www.seleniumhq.org/download/)

#### Firefox

Check the release date of the downloaded version of Selenium
server, download and install a firefox version with date less then the 
date of your selenium server. Before, install the latest version of
geckodriver (https://github.com/mozilla/geckodriver/releases):
```bash
wget https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-linux64.tar.gz
tar zxfv geckodriver-v0.23.0-linux64.tar.gz
sudo mv geckodriver /usr/bin/
chmod +x /usr/bin/geckodriver
```

#### PhantomJS

Download PhantomJS from the oficial site
(http://phantomjs.org/download.html). If you use `apt` for install
PhantomJS, will not work good because the version from `apt` dont have 
any dependencies to run all features required for integrate PhantomJS with
Selenium. Example:
```bash
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2
sudo mv phantomjs-2.1.1-linux-x86_64 /usr/local/share/
sudo ln -s /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/
```

#### Chrome

Download the latest version of chromedriver
(http://chromedriver.storage.googleapis.com/index.html)
```bash
wget http://chromedriver.storage.googleapis.com/2.42/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/
chmod +x /usr/bin/chromedriver
```

**Running Standalone Selenium Server**
Only for Chrome, Firefox and PhantomJS
```bash
java -jar ~/Downloads/selenium-server-standalone-3.14.0.jar
```

### Clone the project
```bash
git clone https://github.com/vitormattos/palestra-behat
```
### Get the Composer, the dependency manager for PHP
Download last composer phar from https://github.com/composer/composer/releases/latest or follow the install instructions in https://getcomposer.org/ or run `sudo apt install composer` in debian based linux.
### Install dependencies
```bash
cd palestra-behat
composer install
```

## Running scenarios
### Headless browsers
#### Goutte

Without JavaScript

```bash
vendor/bin/behat -c behatGoutte.yml -s web features/web/exemploGoutte.feature
```

#### chrome headless

With JavaScript

> OBS: Only supported by versions 59+ of chome or chromium

First start chrome or chromium in headless mode

```bash
google-chrome  --disable-gpu --headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222
```

After start browser in headless mode, run scenario

```bash
vendor/bin/behat -c behatChromeHeadless.yml -s web features/web/exemploJavaScript.feature
```

#### phantomjs

With JavaScript

```bash
phantomjs --webdriver=4445
vendor/bin/behat -c behatPhantomJS.yml -s web features/web/exemploJavaScript.feature
```

### Common browsers
#### Chrome
```bash
vendor/bin/behat -c behatChrome.yml -s web features/web/exemploJavaScript.feature
```

#### Firefox
```bash
vendor/bin/behat -c behatFirefox.yml -s web features/web/exemploJavaScript.feature
```
