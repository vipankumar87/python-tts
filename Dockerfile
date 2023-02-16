FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . .
#RUN django-admin startproject mysite
#CMD ["python", "/code/myproject/manage.py", "runserver" ,"0.0.0.0:8000"]