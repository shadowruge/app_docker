# Use uma imagem base Python oficial
FROM python:3.9

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências do projeto
# Instala as dependências do Flask
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade pip

# Copia todo o conteúdo do diretório atual para o diretório de trabalho
COPY . .

# Expõe a porta em que o aplicativo Flask está sendo executado
EXPOSE 5000

# Comando para iniciar o aplicativo Flask quando o contêiner for iniciado
CMD ["python", "app/app.py"]
