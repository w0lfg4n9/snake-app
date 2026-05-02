# 🐍 Snake Game (Dockerized + CI Pipeline)

A simple Snake game application containerized using Docker and fully automated with a CI pipeline using GitHub Actions.

---

## 🚀 Features

* 🎮 Playable Snake game
* 🐳 Dockerized application
* ⚙️ Automated build & push using CI (GitHub Actions)
* 📦 Image stored on Docker Hub
* 🔁 Versioned builds using commit SHA

---

## 🧠 Architecture Overview

```text
Code → Git Push → CI Pipeline → Docker Build → Docker Hub
```

---

## 📁 Project Structure

snake-app/
├── .git
├── .github/
│   └── workflows/
│       └── docker.yml   ✅ (CI pipeline)
├── Dockerfile           ✅ (build instructions)
├── index.html
├── script.js
├── style.css
├── test.txt
├── trigger.txt

---

## 🐳 Docker Image

The application is built and pushed to Docker Hub:

```text
wolfgangvin/snake-app:<commit-sha>
```

---

## ⚙️ CI Pipeline

Every push to the `main` branch triggers:

1. Checkout code
2. Log in to Docker Hub
3. Build Docker image
4. Push image to Docker Hub

---

## 🛠️ How to Run Locally

### 1. Pull the latest image

```bash
docker pull wolfgangvin/snake-app:latest
```

### 2. Run the container

```bash
docker run -p 8080:80 wolfgangvin/snake-app:latest
```

### 3. Open in browser

```
http://localhost:8000
```

---

## 🔐 Required Secrets (for CI)

Set these in your repository:

* `DOCKER_USERNAME`
* `DOCKER_PASSWORD` (or access token)

---

## 🧪 Development

To build locally:

```bash
docker build -t snake-app .
```

To run locally:

```bash
docker run -p 8080:80 snake-app
```

---

## 🚀 Future Improvements

* 🔄 Continuous Deployment (auto deploy to server)
* ☁️ Deploy to cloud (EC2 / container services)
* 📈 Add monitoring & logging
* 🔐 Use Docker access tokens securely
* 🧩 Add version tagging (`latest` + semantic versions)

---

## 📌 Summary

This project demonstrates:

* Containerization using Docker
* CI automation using GitHub Actions
* Image distribution via Docker Hub

---

## 👨‍💻 Author

Vinayak

---

## ⭐ Notes

This project is part of a DevOps learning journey focusing on real-world workflows and automation.

---
