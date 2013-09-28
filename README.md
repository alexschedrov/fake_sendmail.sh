## fake_sendmail.sh
================

Allows enable fake sendmail on LAMP.

## Usage
========

1. Edit destination in script when do you want to place letters.
Example:
```
    prefix="/home/sanchiz/htdocs/sendmail/new"
```
```
    numPath="/home/sanchiz/htdocs/sendmail"
```
2. Set script as executable.
```
    sudo chmod u+x,g+x fake_sendmail.sh
```
3. Create symlink to /usr/bin.
```
    sudo ln -s /your_path/fake_sendmail.sh /usr/bin/fake_sendmail
```
4. Add to php.ini.
```
    sendmail_path = fake_sendmail
```
5. If you don't want create symlink, at once add to php.ini.
```
    sendmail_path = /your_path/fake_sendmail.sh
```
6. Restart apache.
```
    sudo service apache2 restart
```
