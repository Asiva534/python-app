# Cloud Run Python Demo

Simple Flask application deployed to Google Cloud Run.

## Run locally

Install dependencies

```bash
pip install -r requirements.txt
```

Run

```bash
python main.py
```

Open

http://localhost:8080

## Docker

Build

```bash
docker build -t cloudrun-demo .
```

Run

```bash
docker run -p 8080:8080 cloudrun-demo
```
