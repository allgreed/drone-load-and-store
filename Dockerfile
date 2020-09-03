FROM marshallford/podman:1.9.3
ADD plugin /plugin
ENTRYPOINT /plugin
