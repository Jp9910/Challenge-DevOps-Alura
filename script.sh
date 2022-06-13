#!/bin/bash
cd /app
python ./manage.py migrate
#python ./manage.py <comando para criar o usuário root?>
python ./manage.py runserver 0.0.0.0:8000