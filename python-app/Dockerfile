ARG VERSION=3.12

FROM python:${VERSION}-alpine AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --prefix=/install --no-cache-dir -r requirements.txt

COPY . .


FROM python:${VERSION}-alpine

WORKDIR /app

RUN addgroup --system fastapi && adduser --system --shell /bin/false --ingroup fastapi --no-create-home fastapi 

COPY --from=builder /install /usr/local
COPY --from=builder /app /app

RUN chown -R fastapi:fastapi /app

EXPOSE 8000

USER fastapi

# Запуск uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]
