FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

COPY ./server /app/server

WORKDIR /app/server

RUN pip install poetry
RUN poetry install --no-dev

CMD ["poetry", "run", "uvicorn", "main:app", "--host=0.0.0.0", "--port=8000"]