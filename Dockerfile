# Dockerfile, Image, Container


FROM python:3.8 

WORKDIR /testing

COPY  web-app .


RUN pip install -r requirements.txt


CMD [ "python3", "./main.py", "--host=0.0.0.0"]
#CMD ["python","./main.py"]
