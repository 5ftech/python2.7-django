FROM daocloud.io/python:2-onbuild
RUN mkdir -p /usr/share/src
WORKDIR /usr/share/src
CMD [ "python", "manage.py runserver 0.0.0.0:8000" ]
