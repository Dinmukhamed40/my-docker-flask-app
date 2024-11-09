# Используем базовый образ Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл requirements.txt и устанавливаем зависимости
COPY requirements.txt /app
RUN pip install -r requirements.txt

# Копируем остальной код приложения
COPY . /app

# Команда запуска Flask-приложения
CMD ["python", "app.py"]
