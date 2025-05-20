#!/bin/bash

docker pull ghcr.io/aptdnfapt/jmusicbot-image:0.4.3.8

docker run -d \
  --name jmusicbot \
  --restart always \
  -v $HOME/jmusicbot:/app \
  ghcr.io/aptdnfapt/jmusicbot-image:0.4.3.8
