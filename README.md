Fake sendmail
================

Very lightweight email catcher for LAMP. Works good on Ubuntu and on other Linux distributions. This shell script allows you to save email, which send your local web server. Emails will saved to separate folder, where you can debug your emails.


Usage
------------

* Need update destination in script when do you want to place emails. Example:
Example:
```
    prefix="/home/sanchiz/htdocs/sendmail/new"
    numPath="/home/sanchiz/htdocs/sendmail"
```

*  Set script as executable.

```
    sudo chmod u+x,g+x fake_sendmail.sh
```

*  Create symlink to /usr/bin.
```
    sudo ln -s /YOUR-PATH/fake_sendmail.sh /usr/bin/fake_sendmail
```

* Add to php.ini. In Ubuntu `/etc/php5/apache2/php.ini`.
```
    sendmail_path = fake_sendmail
```

* If you don't want create symlink, at once add to php.ini.
```
    sendmail_path = /YOUR-PATH/fake_sendmail.sh
```

* Make sure what your script works, print in bash `fake_sendmail`, if there no errors, all ok.

* Restart apache.
```
    sudo service apache2 restart
```
