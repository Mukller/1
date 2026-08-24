FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN useradd -m -u 1000 appuser
COPY --chown=1000:1000 . .

USER appuser
CMD ["python", "-u", "-m", "app.main"]

# Author: Anton Petnitsky
# GitHub: https://github.com/Mukller/countdown-bot
# Last modified: 2026-08-25 00:10:00 +0300
