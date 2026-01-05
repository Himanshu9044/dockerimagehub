# # use the official Python image from the docker
# FROM python 3.9-slim
# # set the working directory
# WORKDIR /app
# # coppy the current directory contents into the container at /app
# COPY . /app
# # install any needed package specified in requirement.txt
# RUN pip install flask

# #make port 5000 available to the world outside this container
# Expose 5000
# # Run app.py when the container launches
# CMD ["python", "app.py"]
FROM python:3.9-slim

WORKDIR /app

COPY requirement.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 5000

CMD ["python", "app.py"]
