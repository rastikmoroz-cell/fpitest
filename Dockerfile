FROM node:20-alpine AS fe
WORKDIR /fe
COPY frontend/package.json ./
RUN npm i --no-audit --no-fund
COPY frontend/ ./
RUN npm run build

FROM python:3.12-slim
WORKDIR /app
RUN pip install --no-cache-dir fastapi "uvicorn[standard]" aiogram redis httpx
COPY backend/main.py .
COPY --from=fe /fe/dist ./static
CMD uvicorn main:app --host 0.0.0.0 --port ${PORT:-8000}
