#python version
FROM python:3.12-slim

#working directory inside container
WORKDIR /app

#copy the content of current directory to location /usr/src/app
COPY . .

#install flask package
RUN pip install -r requirements.txt

#expose the web port
EXPOSE 5000

#run the application when container launch
CMD [ "python", "web_app.py" ]
