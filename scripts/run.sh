#!/bin/sh

# any command that fails it going to fail the whole script and end
set -e

python manage.py wait_for_db
python manage.py collectstatic --noinput
python manage.py migrate

# run it on tcp 9000 , it would set 4 workers to serve the site
uwsgi --socket :9000 --workers 4 --master --enable-threads --module app.wsgi