#!/bin/sh

echo 'Setup application. [Y/n] > '
read ANS
case ${ANS} in
    [Yy] )
        if [ -d '/Users/itigoppo/apps/nono150_com' ]; then
            echo '--- Symlink Create. nono150'
            ln -nfs /Users/itigoppo/apps/nono150_com /var/www/html/nono150_com
        fi
        if [ -d '/Users/itigoppo/apps/hpbg' ]; then
            echo '--- Symlink Create. hpbg'
            ln -nfs /Users/itigoppo/apps/hpbg /var/www/html/hpbg
        fi
        ;;
    * ) echo '--- Skip.' ;;
esac

