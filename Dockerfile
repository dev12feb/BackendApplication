FROM python:3.13.0b1-alpine3.19
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
ENV MYSQL_USER=root
ENV MYSQL_ROOT_PASSWORDD=my_password
ENV MYSQL_DATABASE=my_database
CMD ["flask" , "run" , "--host=0.0.0.0" , "--port=8000"]