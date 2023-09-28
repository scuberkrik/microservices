FROM python:3.9
RUN useradd -ms /bin/bash adm -g adm
USER adm
WORKDIR /home/adm
COPY requirements.txt .
RUN pip install -r requirements.txt && rm requirements.txt
COPY app.py .
EXPOSE 8080
ENTRYPOINT python app.py

