FROM python:3
ENV PYTHONUNBUFFERED=1
ENV PATH="/home/app/.local/bin:${PATH}"
RUN mkdir /app
WORKDIR /app
COPY django/ /app/
RUN useradd -ms /bin/bash app
RUN chown -R app:app /app
USER app
RUN pip install -r requirements.txt