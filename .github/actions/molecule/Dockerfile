ARG IMAGE_NAME
ARG IMAGE_TAG

FROM ${IMAGE_NAME:-quay.io/ansible/molecule}:${MOLECULE_IMAGE_TAG:-latest}

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

VOLUME ["/github/workspace"]

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["molecule","--version"]