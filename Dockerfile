# Gunakan image base Python resmi
FROM python:3.9-slim-buster

# Atur direktori kerja di dalam container
WORKDIR /app

# Salin file requirements.txt dan instal dependensi
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Salin semua file aplikasi ke direktori kerja
COPY . .

# Paparkan port yang akan digunakan aplikasi
EXPOSE 5000

# Ini adalah perintah fallback, Procfile akan mengambil alih di DocPloy
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
