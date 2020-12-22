FROM python:3.7

COPY . /app
WORKDIR /app

RUN pip3 install -r requirements.txt

RUN git clone https://github.com/GeoscienceAustralia/AusPIX_DGGS

RUN cp -a AusPIX_DGGS/auspixdggs/ ./

RUN rm -rf AusPIX_DGGS

EXPOSE 3000
CMD python ./app.py
