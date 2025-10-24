# Usa una imagen base de Python
FROM python:3.9-slim

# Crea una carpeta de trabajo
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . .

# Instala Flask
RUN pip install flask

# Expone el puerto 5000 (el que usa Flask)
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]

# 1️⃣ Construye la imagen
docker build -t devsecops-lab .

# 2️⃣ Ejecuta el contenedor y mapea el puerto
docker run -p 5000:5000 devsecops-lab
