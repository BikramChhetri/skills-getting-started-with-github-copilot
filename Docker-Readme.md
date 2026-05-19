# Docker Usage

This project includes a `Dockerfile` for running the FastAPI application in a container.

## Prerequisites

- Docker installed on your machine
- Project files available in the repository root

## Build the Docker image

From the project root directory, run:

```bash
docker build -t skills-copilot-app .
```

This command builds the image using the `Dockerfile` in the repository root.

## Run the Docker container

Start the container and map port `8000` from the container to your host:

```bash
docker run -p 8000:8000 skills-copilot-app
```

## Access the application

Open the app in your browser:

```text
http://127.0.0.1:8000/
```

## Verify the API

You can also confirm the API is working by requesting the activities endpoint:

```bash
curl http://127.0.0.1:8000/activities
```

## Notes

- The container runs `uvicorn src.app:app --host 0.0.0.0 --port 8000`
- If you change the exposed port, update the `docker run` command accordingly
