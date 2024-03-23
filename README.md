# food-recipy-api
This is a food recipy Django api project Integrated with Docker , CI/CD


## To Start the app with Docker-compose
command` docker-compose up`
<!-- code` docker-compose run --rm app sh -c "python manage.py collectstatic"` -->

## To check the code using linting
command` docker-compose run --rm app sh -c "flake8"`

## To run the test
command` docker-compose run --rm app sh -c "python manage.py test"`

## To run our custom command
command` docker-compose run --rm app sh -c "python manage.py wait_for_db"`

## To start an project
command` docker-compose run --rm app sh -c "django-admin startproject app ."`

## To create a core app
command` docker-compose run --rm app sh -c "python manage.py startapp core`

## List all volumes in docker
command` docker volume ls`

## Remove a volume from docker
command` docker volume rm name-of-volume`