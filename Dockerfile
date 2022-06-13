from python

COPY . /app
#COPY ./script.sh /app/script.sh

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

#RUN chmod +x ./script.sh
#run ./script.sh fica preso no build da imagem, pois executa o comando de subir o servidor, que não retorna

#ENTRYPOINT ["/app/script.sh"] #não está funcionando?