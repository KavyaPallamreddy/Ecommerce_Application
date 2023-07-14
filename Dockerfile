FROM python:3
RUN sudo pip install --upgrade pip
RUN sudo pip install django==3.2
RUN sudo pip install Pillow==8.2.0
RUN python manage.py makemigrations
RUN python manage.py migrate
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
