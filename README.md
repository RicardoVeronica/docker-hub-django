# This image will help you to start with Python Django Django Rest Framework and Postgres

### Just clone the repo
```
$ git clone https://github.com/RicardoVeronica/docker-hub-django.git
```

### Change postgres data in docker-compose.yml
```
environment:
  - POSTGRES_DB=[your-db-name]
  - POSTGRES_USER=[your-username]
  - POSTGRES_PASSWORD=[your-password]
```

### Build the imaga and create Django project in one command
```
$ docker-compose run --rm web django-admin startproject [your-project-name] .
```

### Chage files owner [root is the owner by default]
```
$ sudo chown -R $USER:$USER .
```

### Set ALLOWED_HOST value
```
# [your-project-name]/settings.py

ALLOWED_HOST = ['*']
```

### Replace database info
```
# [your-project-name]/settings.py

DATABASES = {
    'default': {
          'ENGINE': 'django.db.backends.postgresql',
          'NAME': '[your-db-name]',
          'USER': '[your-username]',
          'PASSWORD': '[your-password]',
          'HOST': 'db',
          'PORT': 5432,
    }
}
```

### Start your project
```
$ docker-compose up
```

### Go to your browser
0.0.0.0:8000

### Start to code

## Happy coding
