#!/bin/bash
set -e

docker rm -f student-ml-app 2>/dev/null || true

docker run -d \
  --name student-ml-app \
  --restart unless-stopped \
  -p 5000:5000 \
  student-performance-ml:latest
