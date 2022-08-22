# Wordpress Dockerized

### Initialize Wordpress 
- Start by checking environments variables in ``.env.dist`` file and edit them if needed
- Use ``make init`` the firt time to initialize project

Your local environment will be available by default at: https://127.0.0.1:8080/

## Start Wordpress
- Use ```make start``` to start wordpress

## Stop Wordpress
- Use ```make stop``` to stop wordpress 

## Default MYSQL configuration
```
MYSQL_USER=admin
MYSQL_PASSWORD=admin
MYSQL_DATABASE=wp
```

## Misc.
- Check ``make help`` for more commands