# Simple Notes App
This is a simple notes app built with React and Django.

## Requirements
1. Python 3.9
2. Node.js
3. React

## Nginx
Nginx reverse proxy to make this application available
access: ```http://<server-ip>:80```

## Installation
1. Clone the repository
```
git clone https://github.com/PYL-patidar/django_notes_app.git
```

2. Build the app
```
docker build -t notes-app .
```

3. Run the app
```
docker run -d -p 8000:8000 notes-app:latest
```

4. Run with docker compose
```
docker compose up --build -d 
```
