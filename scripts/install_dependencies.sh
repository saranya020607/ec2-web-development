
#!/bin/bash
set -e

dnf install -y docker
systemctl enable --now docker

cd /opt/student-performance-ml
docker build -t student-performance-ml:latest .
