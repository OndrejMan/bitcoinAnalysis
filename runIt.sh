docker run -it --rm \
  -e HOST_CLIENT_DIR="${PWD}" \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "${PWD}/scenarios:/app/scenarios:ro" \
  -v "${PWD}/notebooks:/app/notebooks:rw" \
  --entrypoint /bin/bash \
  ghcr.io/ondrejman/blocksciemulatoranalysis:latest \
  -c 'python3 wrapper.py "$@" && /bin/bash' _ -h