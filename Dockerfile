FROM python:3

RUN python3 -m venv .venv
RUN cd /
ENV source .venv/bin/activate
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD [ "python3", "main.py" ]