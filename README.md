# Project Name: Food Recipe API

## Description:
The Food Recipe API is a RESTful API developed using Test-Driven Development (TDD) principles. It provides a platform for users to manage recipes, ingredients, and tags, enhancing their culinary experience by facilitating easy access to a vast array of recipes.

##Features:
1. **User Authentication:** 
   - Register: Users can register by providing necessary details.
   - Login: Registered users can securely log in to their accounts.
   - Logout: Allows users to safely end their current session.

2. **Recipe Management:**
   - Create: Users can create new recipes by providing relevant details such as title, description, cooking instructions, etc.
   - Retrieve: Fetch details of existing recipes, including ingredients and tags.
   - Update: Modify existing recipes to reflect changes or improvements.
   - Delete: Remove recipes that are no longer needed.

3. **Ingredient Section:**
   - Add Ingredients: Users can add ingredients to their recipes, specifying quantities and units.
   - View Ingredients: Access a list of available ingredients and their details.

4. **Tagging System:**
   - Tag Recipes: Allows users to tag recipes with relevant keywords for easy categorization and search.
   - Filter by Tags: Users can filter recipes based on associated tags, simplifying recipe discovery.

**Technology Stack:**
- Python: Utilized as the primary programming language for backend development.
- Django: A high-level Python web framework employed for rapid API development.
- Django REST Framework: A powerful toolkit for building Web APIs with Django, facilitating serialization, authentication, and more.
- PostgreSQL: A robust open-source relational database management system utilized for data storage.
- Docker: Employed for containerization, providing a consistent environment across different deployment environments.
- Test-Driven Development (TDD): A development approach used to ensure code quality and reliability through comprehensive testing.
- CI/CD: This helps in allowing continues integration and countinous deployment
  
**Usage:**
1. Clone the repository to your local machine. ` git clone https://github.com/Alex1-ai/food-recipy-api`
2. move into the directory `cd food-recipy-api`.
3. make sure you have docker installed run this command to build dockerfile `docker-compose build `.
4. To start the server in local computer `docker-compose up`.


# Auxilliary commands for docker 
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
