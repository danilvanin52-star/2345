FROM python:3.11-slim
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1
WORKDIR /opt/aisklad
COPY Aisklad_SHOP.zip /tmp/aisklad-code.zip
RUN python -m zipfile -e /tmp/aisklad-code.zip /opt/aisklad
RUN pip install --no-cache-dir -r /opt/aisklad/requirements.txt
CMD ["python", "-u", "/opt/aisklad/run_aisklad.py"]
