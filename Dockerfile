
FROM python:3.7
LABEL maintainer "Amine Hadj-Youcef  <hadjyoucef.amine@gmail.com>"

ENV APP_HOME /app

WORKDIR $APP_HOME


COPY requirements.txt ./

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    rm -rf requirements.txt

COPY . ./

EXPOSE 8000

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
