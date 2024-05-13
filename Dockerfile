# FROM chainguard/bun:latest

# WORKDIR /app

# COPY bun.lockb package.json ./
# RUN bun install

# RUN apt-get update && apt-get install -y curl

# COPY . .

FROM debian

RUN apt-get update && apt-get install -y \
  zip \
  unzip \
  curl

RUN curl -fsSL https://bun.sh/install | bash

WORKDIR /app
