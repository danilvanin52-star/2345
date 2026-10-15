FROM python:3.11-slim
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1
WORKDIR /opt/funpay
COPY Bothost_FunPay_0.12.1.zip /tmp/funpay-code.zip
RUN python -m zipfile -e /tmp/funpay-code.zip /opt/funpay
RUN pip install --no-cache-dir -r /opt/funpay/requirements.txt
CMD ["python", "-u", "/opt/funpay/start_bothost.py"]
