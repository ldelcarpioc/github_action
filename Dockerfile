# Usar imagen base de Python 3.11
FROM python:3.14-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos del proyecto
COPY src/ ./src/
COPY README.md .

# Instalar dependencias
RUN pip install --no-cache-dir -r src/requirements.txt

# Ejecutar los tests al iniciar el contenedor
CMD ["python", "-m", "pytest", "src/tests.py", "-v"]