# set alpine as the base image of the Dockerfile
# alpine:3.23 ships Tor 0.4.9.15 — the image tag mirrors that version
FROM alpine:3.23

# install Tor
RUN apk add --no-cache tor

# Copy over the torrc created above and set the owner to `tor`
COPY torrc /etc/tor/torrc
RUN chown -R tor /etc/tor

# Set `tor` as the default user during the container runtime
USER tor

# Set `tor` as the entrypoint for the image
ENTRYPOINT ["tor"]

# Set the default container command
# This can be overridden later when running a container
CMD ["-f", "/etc/tor/torrc"]

