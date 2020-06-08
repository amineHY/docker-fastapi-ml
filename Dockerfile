# FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7
# source: https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker
# COPY ./app /app
FROM python:3.7
LABEL maintainer "Amine Hadj-Youcef  <hadjyoucef.amine@gmail.com>"

# Copy local code to the container image.
ENV APP_HOME /app

WORKDIR $APP_HOME
COPY . ./

# --------------- Install python packages using `pip`

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    rm -rf requirements.txt

# --------------- Configure port

EXPOSE 8000

# --------------- Export envirennement variable

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
