FROM python:3.9-slim

WORKDIR /app

RUN pip install --upgrade pip && pip install uv

COPY . /app

RUN uv pip install --system --no-cache-dir -r ./requirements.txt

EXPOSE 3000

CMD ["python","model.py"]
