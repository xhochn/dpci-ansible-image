FROM python:3.13-slim-bookworm

ENV PIP_NO_CACHE_DIR=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PATH="/home/ansible/.local/bin:$PATH"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        curl \
        ca-certificates \
        build-essential \
        gcc \
        libffi-dev \
        libssl-dev && \
    pip install --upgrade pip && \
    pip install --no-cache-dir \
        pre-commit \
        ansible \
        ansible-lint \
        yamllint \
        pytest && \
    apt-get purge -y --auto-remove build-essential gcc && \
    rm -rf /var/lib/apt/lists/* ~/.cache/pip


ENTRYPOINT ["bash"]